import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

part 'task_watcher_bloc.freezed.dart';
part 'task_watcher_event.dart';
part 'task_watcher_state.dart';

class TaskWatcherBloc extends Bloc<TaskWatcherEvent, TaskWatcherState> {
  TaskWatcherBloc(this._taskRepository, {TaskWatcherState? initialState})
      : super(initialState ?? TaskWatcherState.initial()) {
    on<TaskWatcherEvent>((event, emit) async {
      await event.when(
        tasksUpdated: (tasks) async {
          _onTaskUpdated(updatedTasks: tasks, emit: emit);
        },
        createdDraftTask: () async {
          if (state.hasEmptyTask == false) {
            _addEmptyTask(emit);
          }
        },
        taskEndEdited: (Task task) async {
          if (task.body.isNotEmpty) {
            await _taskRepository.upsertTasks([task]);
            _onTaskUpdated(updatedTasks: [task], emit: emit);
          } else {
            _removeEmptyTasks(emit);
          }
        },
        allTasksRequested: () async {
          emit(state.copyWith(failure: null, isInProgress: true));
          final failureOrTasks = await _taskRepository.getAllTasks();
          failureOrTasks.fold((l) {
            emit(state.copyWith(failure: l, isInProgress: false));
          }, (r) {
            if (r.entities.isNotEmpty) {
              _addTaskItemBlocs(r.entities);
            }

            emit(
              state.copyWith(
                isInProgress: false,
                allTasks: List.from(r.entities, growable: false),
              ),
            );
          });
        },
      );
    });
  }

  final Map<String, TaskItemBloc> taskItemBlocs = {};
  final TaskRepository _taskRepository;

  @override
  void onChange(Change<TaskWatcherState> change) {
    super.onChange(change);
  }

  @override
  Future<void> close() {
    taskItemBlocs.forEach((key, value) {
      value.close();
    });
    return super.close();
  }

  void _addEmptyTask(Emitter<TaskWatcherState> emit) {
    final emptyTask = Task.empty();
    _addTaskItemBloc(emptyTask);
    emit(
      state.copyWith(
        allTasks:
            List.from(<Task>[...state.allTasks, emptyTask], growable: false),
      ),
    );
  }

  void _removeEmptyTasks(Emitter<TaskWatcherState> emit) {
    final List<Task> emptyTasks = List<Task>.from(state.allTasks)
        .where((element) => element.isEmpty)
        .toList();
    final resultTaskList = List<Task>.from(state.allTasks)
      ..removeWhere((element) => element.isEmpty == true);

    emit(state.copyWith(allTasks: List.from(resultTaskList, growable: false)));
    //Remove bloc with empty task
    for (final Task task in emptyTasks) {
      _removeTaskItemBloc(task);
    }
  }

  void _onTaskUpdated({
    required List<Task> updatedTasks,
    required Emitter<TaskWatcherState> emit,
  }) {
    final updatedTaskIds = updatedTasks.map((e) => e.id).toList();
    final resultTaskList = List<Task>.from(
      state.allTasks.map((e) {
        if (updatedTaskIds.contains(e.id)) {
          return updatedTasks.firstWhereOrNull((task) => task.id == e.id);
        }
        return e;
      }).toList(),
    );
    emit(state.copyWith(allTasks: List.from(resultTaskList, growable: false)));
  }
}

extension TaskItemBlocsMapUpdate on TaskWatcherBloc {
  void _addTaskItemBloc(Task task) {
    taskItemBlocs[task.id] = TaskItemBloc(
      _taskRepository,
      task: task,
      onAction: (Task? task) {
        if (task == null) {
          return;
        }
        add(TaskWatcherEvent.tasksUpdated(tasks: [task]));
      },
    );
  }

  void _addTaskItemBlocs(List<Task> tasks) {
    for (final Task task in tasks) {
      taskItemBlocs[task.id] = TaskItemBloc(
        _taskRepository,
        task: task,
        onAction: (Task? task) {
          if (task == null) {
            return;
          }
          add(TaskWatcherEvent.tasksUpdated(tasks: [task]));
        },
      );
    }
  }

  void _removeTaskItemBlocs(List<Task> tasks) {
    if (taskItemBlocs.isEmpty) {
      return;
    }
    for (final Task task in tasks) {
      final TaskItemBloc? removeBloc =
          taskItemBlocs[taskItemBlocs.keys.firstWhere((e) => e == task.id)];
      taskItemBlocs.removeWhere((key, value) => key == task.id);
      removeBloc?.close();
    }
  }

  void _removeTaskItemBloc(Task task) {
    if (taskItemBlocs.isEmpty) {
      return;
    }
    final TaskItemBloc? removeBloc =
        taskItemBlocs[taskItemBlocs.keys.firstWhere((e) => e == task.id)];
    taskItemBlocs.removeWhere((key, value) => key == task.id);
    removeBloc?.close();
  }
}

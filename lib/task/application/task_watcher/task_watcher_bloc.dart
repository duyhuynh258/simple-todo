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
  TaskWatcherBloc(this._taskRepository) : super(TaskWatcherState.initial()) {
    on<TaskWatcherEvent>((event, emit) async {
      await event.when(tasksUpdated: (tasks) async {
        _onTaskUpdated(updatedTasks: tasks, emit: emit);
      }, createdDraftTask: () async {
        _addEmptyTask(emit);
      }, taskEndEdited: (Task task) async {
        if (task.body.isNotEmpty) {
          await _taskRepository.upsertTasks([task]);
        } else {
          _removeEmptyTasks(emit);
        }
      }, allTasksRequested: () async {
        emit(state.copyWith(failure: null, isInProgress: true));
        final failureOrTasks = await _taskRepository.getAllTasks();
        failureOrTasks.fold((l) {
          emit(state.copyWith(failure: l, isInProgress: false));
        }, (r) {
          emit(state.copyWith(
              isInProgress: false,
              allTasks: List.from(r.entities, growable: false)));
        });
      });
    });

    add(const TaskWatcherEvent.allTasksRequested());
  }

  final Map<Task, TaskItemBloc> taskItemBlocs = {};
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
    emit(state.copyWith(
        allTasks: List.from(<Task>[...state.allTasks, Task.empty()],
            growable: false)));
  }

  void _removeEmptyTasks(Emitter<TaskWatcherState> emit) {
    final resultTaskList = List<Task>.from(state.allTasks)
      ..removeWhere((element) => element.isEmpty == true);
    emit(state.copyWith(allTasks: List.from(resultTaskList, growable: false)));
  }

  void _onTaskUpdated(
      {required List<Task> updatedTasks,
      required Emitter<TaskWatcherState> emit}) {
    final updatedTaskIds = updatedTasks.map((e) => e.id).toList();
    final resultTaskList = List<Task>.from(state.allTasks.map((e) {
      if (updatedTaskIds.contains(e.id)) {
        return updatedTasks.firstWhereOrNull((task) => task.id == e.id);
      }
      return e;
    }).toList());
    emit(state.copyWith(allTasks: List.from(resultTaskList, growable: false)));
  }
}

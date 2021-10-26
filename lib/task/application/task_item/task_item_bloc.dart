import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/shared/debouncer.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/domain/task_failure.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

part 'task_item_bloc.freezed.dart';
part 'task_item_event.dart';
part 'task_item_state.dart';

typedef OnTaskItemActionCallback = void Function(Task? resultTask);

class TaskItemBloc extends Bloc<TaskItemEvent, TaskItemState> {
  TaskItemBloc(
    this._taskRepository, {
    Debouncer? autoSaveDebouncer,
    Task? task,
    OnTaskItemActionCallback? onAction,
  })  : _autoSaveDebouncer = autoSaveDebouncer ?? Debouncer(milliseconds: 300),
        super(TaskItemState(task: task ?? Task.draft())) {
    on<TaskItemEvent>((event, emit) async {
      await event.when(
        completed: () async {
          final Task resultTask = state.task.completed();
          final failureOrSuccess =
              await _taskRepository.upsertTasks([resultTask]);
          failureOrSuccess.fold((l) {
            emit(state.copyWith(failure: l));
          }, (r) {
            emit(state.copyWith(task: resultTask));
            onAction?.call(resultTask);
          });
        },
        unCompleted: () async {
          final Task resultTask = state.task.uncompleted();
          final failureOrSuccess =
              await _taskRepository.upsertTasks([resultTask]);
          failureOrSuccess.fold((l) {
            emit(state.copyWith(failure: l));
          }, (r) {
            emit(state.copyWith(task: resultTask));
            onAction?.call(resultTask);
          });
        },
        bodyChanged: (body) async {
          final Task resultTask = state.task.copyWith(body: body);
          emit(state.copyWith(task: state.task.copyWith(body: body)));
          onAction?.call(resultTask);
          autoSaveDebouncer?.run(() {
            _taskRepository.upsertTasks([resultTask]);
          });
        },
        failureHandled: () async => emit(state.copyWith(failure: null)),
      );
    });
  }

  final TaskRepository _taskRepository;
  final Debouncer? _autoSaveDebouncer;

  @override
  Future<void> close() {
    _autoSaveDebouncer?.dispose();
    return super.close();
  }
}

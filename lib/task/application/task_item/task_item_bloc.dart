import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

part 'task_item_bloc.freezed.dart';
part 'task_item_event.dart';
part 'task_item_state.dart';

typedef OnTaskItemActionCallback = void Function(Task? resultTask);

class TaskItemBloc extends Bloc<TaskItemEvent, TaskItemState> {
  TaskItemBloc(this._taskRepository,
      {Task? task, OnTaskItemActionCallback? onAction})
      : super(TaskItemState(task: task ?? Task.empty())) {
    on<TaskItemEvent>((event, emit) {
      event.when(
          saved: () {},
          completed: () {
            final Task resultTask = state.task.copyWith(isComplete: true);
            _taskRepository.upsertTasks([resultTask]);
            emit(state.copyWith(task: resultTask));
            onAction?.call(resultTask);
          },
          unCompleted: () {
            final Task resultTask = state.task.copyWith(isComplete: false);
            _taskRepository.upsertTasks([resultTask]);
            emit(state.copyWith(task: resultTask));
            onAction?.call(resultTask);
          },
          bodyChanged: (body) {
            final Task resultTask = state.task.copyWith(body: body);
            emit(state.copyWith(task: state.task.copyWith(body: body)));
            onAction?.call(resultTask);
          });
    });
  }

  final TaskRepository _taskRepository;
}

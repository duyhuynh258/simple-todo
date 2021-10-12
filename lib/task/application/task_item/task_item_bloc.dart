import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

part 'task_item_bloc.freezed.dart';
part 'task_item_event.dart';
part 'task_item_state.dart';

class TaskItemBloc extends Bloc<TaskItemEvent, TaskItemState> {
  TaskItemBloc(this._taskRepository, {Task? task})
      : super(TaskItemState(task: task ?? Task.empty())) {
    on<TaskItemEvent>((event, emit) {
      event.when(
          saved: () {},
          completed: () {
            _taskRepository.saveTasks([state.task.copyWith(isComplete: true)]);
          },
          unCompleted: () {
            _taskRepository.saveTasks([state.task.copyWith(isComplete: false)]);
          });
    });
  }

  final TaskRepository _taskRepository;
}

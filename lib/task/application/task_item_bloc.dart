import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

part 'task_item_bloc.freezed.dart';
part 'task_item_event.dart';
part 'task_item_state.dart';

class TaskItemBloc extends Bloc<TaskItemEvent, TaskItemState> {
  TaskItemBloc(this._taskRepository)
      : super(TaskItemState.initial(task: Task.empty())) {
    on<TaskItemEvent>((event, emit) {
      event.when(
          saved: (task) {
            _taskRepository.sync([task]);
          },
          completed: (task) {},
          unCompleted: (task) {});
    });
  }

  final TaskRepository _taskRepository;
}

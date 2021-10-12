import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/domain/paginated_list.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_watcher_bloc.freezed.dart';
part 'task_watcher_event.dart';
part 'task_watcher_state.dart';

class TaskWatcherBloc extends Bloc<TaskWatcherEvent, TaskWatcherState> {
  TaskWatcherBloc() : super(TaskWatcherState.initial()) {
    on<TaskWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final Map<Task, TaskItemBloc> taskItemBlocs = {};

  @override
  Future<void> close() {
    taskItemBlocs.forEach((key, value) {
      value.close();
    });
    return super.close();
  }
}
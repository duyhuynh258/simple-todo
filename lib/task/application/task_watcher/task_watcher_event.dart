part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherEvent with _$TaskWatcherEvent {
  const TaskWatcherEvent._();
  const factory TaskWatcherEvent.tasksUpdated({required List<Task> tasks}) =
      _TasksUpdated;
}

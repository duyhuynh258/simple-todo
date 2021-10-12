part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherEvent with _$TaskWatcherEvent {
  const TaskWatcherEvent._();
  const factory TaskWatcherEvent.tasksUpdated({required List<Task> tasks}) =
      _TasksUpdated;
  const factory TaskWatcherEvent.createdDraftTask() = _CreatedDraftTask;
  const factory TaskWatcherEvent.taskEndEdited({required Task task}) =
      _TaskEndEdited;

  const factory TaskWatcherEvent.allTasksRequested() = _AllTasksRequested;
}

part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherState with _$TaskWatcherState {
  const TaskWatcherState._();

  const factory TaskWatcherState({
    required bool isInProgress,
    required List<Task> allTasks,
    required PaginatedList<Task> unCompletedTasks,
    required PaginatedList<Task> completedTasks,
  }) = _TaskWatcherState;

  factory TaskWatcherState.initial() => TaskWatcherState(
      isInProgress: true,
      allTasks: [],
      unCompletedTasks: PaginatedList.empty(),
      completedTasks: PaginatedList.empty());
}

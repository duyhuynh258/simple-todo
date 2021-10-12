part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherState with _$TaskWatcherState {
  const TaskWatcherState._();

  const factory TaskWatcherState({
    required bool isInProgress,
    required List<Task> allTasks,
    required List<Task> unCompletedTasks,
    required bool isNextUnCompletedTasksAvailable,
    required List<Task> completedTasks,
    required bool isNextCompletedTasksAvailable,
  }) = _TaskWatcherState;

  factory TaskWatcherState.initial() => const TaskWatcherState(
        isInProgress: true,
        allTasks: [],
        unCompletedTasks: [],
        isNextUnCompletedTasksAvailable: false,
        completedTasks: [],
        isNextCompletedTasksAvailable: false,
      );
}

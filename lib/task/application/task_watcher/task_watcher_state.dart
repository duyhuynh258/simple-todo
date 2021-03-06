part of 'task_watcher_bloc.dart';

@freezed
class TaskWatcherState with _$TaskWatcherState {
  const TaskWatcherState._();

  const factory TaskWatcherState({
    required bool isInProgress,
    required List<Task> allTasks,
    required bool isNextUnCompletedTasksAvailable,
    required bool isNextCompletedTasksAvailable,
    TaskFailure? failure,
  }) = _TaskWatcherState;

  factory TaskWatcherState.initial() => const TaskWatcherState(
        isInProgress: true,
        allTasks: [],
        isNextUnCompletedTasksAvailable: false,
        isNextCompletedTasksAvailable: false,
      );

  List<Task> get unCompletedTasks =>
      allTasks.where((element) => element.isCompleted == false).toList();

  List<Task> get completedTasks =>
      allTasks.where((element) => element.isCompleted == true).toList();

  bool get hasDraftTask => allTasks.any((element) => element.isDraft);
}

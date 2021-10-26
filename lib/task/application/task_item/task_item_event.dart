part of 'task_item_bloc.dart';

@freezed
class TaskItemEvent with _$TaskItemEvent {
  const TaskItemEvent._();
  const factory TaskItemEvent.completed() = _TaskCompleted;
  const factory TaskItemEvent.unCompleted() = _TaskUnCompleted;
  const factory TaskItemEvent.failureHandled() = _FailureHandled;
  const factory TaskItemEvent.bodyChanged({required String body}) =
      _TaskBodyChanged;
}

part of 'task_item_bloc.dart';

@freezed
class TaskItemEvent with _$TaskItemEvent {
  const TaskItemEvent._();
  const factory TaskItemEvent.saved({required Task task}) = _TaskSaved;
  const factory TaskItemEvent.completed({required Task task}) = _TaskCompleted;
  const factory TaskItemEvent.unCompleted({required Task task}) =
      _TaskUnCompleted;
}

part of 'task_item_bloc.dart';

@freezed
class TaskItemState with _$TaskItemState {
  const TaskItemState._();
  const factory TaskItemState.initial({required Task task}) = _Initial;
}

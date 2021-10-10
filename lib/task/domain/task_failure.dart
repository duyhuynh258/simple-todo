import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_failure.freezed.dart';

@freezed
class TaskFailure with _$TaskFailure {
  const factory TaskFailure.unexpected() = Unexpected;

  const factory TaskFailure.insufficientPermissions() = InsufficientPermissions;

  const factory TaskFailure.unableToUpdate() = UnableToUpdate;
  const factory TaskFailure.createdLocalButSyncFailed(
      {required Task localTask}) = _CreatedLocalButSyncFailed;

  const TaskFailure._();
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/unique_id.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();

  const factory Task.__({
    required UniqueId id,
    required String body,
    required bool isSynchronized,
    required bool isCompleted,
  }) = _Task;

  factory Task.fromData({
    required String id,
    required String body,
    required bool isSynchronized,
    required bool isCompleted,
  }) =>
      Task.__(
        id: UniqueId.fromUUID(id),
        body: body,
        isSynchronized: isSynchronized,
        isCompleted: isCompleted,
      );

  factory Task.draft() => Task.__(
        id: UniqueId(),
        body: '',
        isSynchronized: false,
        isCompleted: false,
      );

  bool get isDraft => body.isEmpty && id.isNewlyCreated;

  Task completed() =>
      copyWith(isCompleted: true, id: UniqueId.fromUUID(id.value));

  Task uncompleted() => copyWith(isCompleted: false);
}

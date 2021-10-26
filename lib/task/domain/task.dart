import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/unique_id.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required UniqueId id,
    required String body,
    required bool isSynchronized,
    required bool isCompleted,
  }) = _Task;

  const Task._();

  factory Task.draft() => Task(
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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/unique_id.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String body,
    required bool isSynchronized,
    required bool isCompleted,
  }) = _Task;

  const Task._();

  factory Task.empty() => Task(
        id: UniqueId().value,
        body: '',
        isSynchronized: false,
        isCompleted: false,
      );

  bool get isEmpty => body.isEmpty;
}

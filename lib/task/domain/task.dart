import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String body,
    required bool isComplete,
  }) = _Task;
  const Task._();
}

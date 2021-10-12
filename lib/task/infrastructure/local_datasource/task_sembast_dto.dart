import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/timestamp.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_sembast_dto.freezed.dart';
part 'task_sembast_dto.g.dart';

@freezed
class TaskSembastDTO with _$TaskSembastDTO {
  factory TaskSembastDTO({
    required String id,
    required String body,
    required bool isCompleted,
    required bool isSynchronized,
    @LocalTimestampConverter() required Timestamp localTimeStamp,
  }) = _TaskSembastDTO;

  factory TaskSembastDTO.fromDomain(Task task) {
    return TaskSembastDTO(
      id: task.id,
      body: task.body,
      localTimeStamp: Timestamp.now(),
      isCompleted: task.isComplete,
      isSynchronized: task.isSynchronized,
    );
  }

  factory TaskSembastDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskSembastDTOFromJson(json);

  factory TaskSembastDTO.fromSembast(
    RecordSnapshot<String, Map<String, dynamic>> snapshot,
  ) {
    final copiedMap = Map<String, dynamic>.from(snapshot.value);
    return TaskSembastDTO.fromJson(copiedMap);
  }

  static List<TaskSembastDTO> fromDomains(List<Task> tasks) =>
      tasks.map((e) => TaskSembastDTO.fromDomain(e)).toList(growable: false);
}

class LocalTimestampConverter implements JsonConverter<Timestamp, Object> {
  const LocalTimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    return Timestamp.parse(json as String);
  }

  @override
  Object toJson(Timestamp timestamp) => timestamp.toIso8601String();
}

extension TaskSembastDTOX on TaskSembastDTO {
  Task toDomain() {
    return Task(
      id: id,
      body: body,
      isComplete: isCompleted,
      isSynchronized: isSynchronized,
    );
  }
}

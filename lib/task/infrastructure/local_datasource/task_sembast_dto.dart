import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_sembast_dto.freezed.dart';
part 'task_sembast_dto.g.dart';

@freezed
class TaskSembastDTO with _$TaskSembastDTO {
  factory TaskSembastDTO({
    @JsonKey(ignore: true) String? id,
    required String body,
    required bool isCompleted,
    required bool isSynchronized,
    @ServerTimestampConverter() required firestore.FieldValue serverTimeStamp,
  }) = _TaskSembastDTO;

  factory TaskSembastDTO.fromDomain(Task task) {
    return TaskSembastDTO(
      id: task.id,
      body: task.body,
      serverTimeStamp: firestore.FieldValue.serverTimestamp(),
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
}

class ServerTimestampConverter
    implements JsonConverter<firestore.FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  firestore.FieldValue fromJson(Object json) {
    return firestore.FieldValue.serverTimestamp();
  }

  @override
  Object toJson(firestore.FieldValue fieldValue) => fieldValue;
}

extension TaskSembastDTOX on TaskSembastDTO {
  Task toDomain() {
    return Task(
      id: id!,
      body: body,
      isComplete: isCompleted,
      isSynchronized: isSynchronized,
    );
  }
}

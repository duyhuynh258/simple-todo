import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _TaskSembastDTO;

  factory TaskSembastDTO.fromDomain(Task task) {
    return TaskSembastDTO(
      id: task.id,
      body: task.body,
      serverTimeStamp: FieldValue.serverTimestamp(),
      isCompleted: task.isComplete,
      isSynchronized: task.isSynchronized,
    );
  }

  factory TaskSembastDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskSembastDTOFromJson(json);

  factory TaskSembastDTO.fromFirestore(DocumentSnapshot? doc) {
    return TaskSembastDTO.fromJson(doc!.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

extension TaskSembastDTOX on TaskSembastDTO {
  Task toDomain() {
    return Task(
      body: body,
      isComplete: isCompleted,
      id: id!,
      isSynchronized: isSynchronized,
    );
  }
}

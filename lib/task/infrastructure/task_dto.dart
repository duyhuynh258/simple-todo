import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDTO with _$TaskDTO {
  factory TaskDTO({
    @JsonKey(ignore: true) String? id,
    required String body,
    required bool isCompleted,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _TaskDTO;

  factory TaskDTO.fromDomain(Task task) {
    return TaskDTO(
      id: task.id,
      body: task.body,
      serverTimeStamp: FieldValue.serverTimestamp(),
      isCompleted: task.isComplete,
    );
  }

  factory TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskDTOFromJson(json);

  factory TaskDTO.fromFirestore(DocumentSnapshot? doc) {
    return TaskDTO.fromJson(doc!.data()! as Map<String, dynamic>)
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

extension TaskDTOX on TaskDTO {
  Task toDomain() {
    return Task(
      body: body,
      isComplete: isCompleted,
      id: id!,
    );
  }
}

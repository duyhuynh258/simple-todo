import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/task/domain/task.dart';

part 'task_firestore_dto.freezed.dart';
part 'task_firestore_dto.g.dart';

@freezed
class TaskFirestoreDTO with _$TaskFirestoreDTO {
  factory TaskFirestoreDTO({
    @JsonKey(ignore: true) String? id,
    required String body,
    required bool isCompleted,
    @ServerTimestampConverter() required FieldValue serverTimeStamp,
  }) = _TaskFirestoreDTO;

  factory TaskFirestoreDTO.fromDomain(Task task) {
    return TaskFirestoreDTO(
      id: task.id,
      body: task.body,
      serverTimeStamp: FieldValue.serverTimestamp(),
      isCompleted: task.isComplete,
    );
  }

  factory TaskFirestoreDTO.fromJson(Map<String, dynamic> json) =>
      _$TaskFirestoreDTOFromJson(json);

  factory TaskFirestoreDTO.fromFirestore(DocumentSnapshot? doc) {
    return TaskFirestoreDTO.fromJson(doc!.data()! as Map<String, dynamic>)
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

extension TaskFirestoreDTOX on TaskFirestoreDTO {
  Task toDomain() {
    return Task(
      body: body,
      isComplete: isCompleted,
      id: id!,
      isSynchronized: true,
    );
  }
}

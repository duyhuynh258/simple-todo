// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_firestore_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskFirestoreDTO _$$_TaskFirestoreDTOFromJson(Map<String, dynamic> json) =>
    _$_TaskFirestoreDTO(
      body: json['body'] as String,
      isCompleted: json['isCompleted'] as bool,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_TaskFirestoreDTOToJson(_$_TaskFirestoreDTO instance) =>
    <String, dynamic>{
      'body': instance.body,
      'isCompleted': instance.isCompleted,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

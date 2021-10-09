// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDTO _$$_TaskDTOFromJson(Map<String, dynamic> json) => _$_TaskDTO(
      body: json['body'] as String,
      isCompleted: json['isCompleted'] as bool,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_TaskDTOToJson(_$_TaskDTO instance) =>
    <String, dynamic>{
      'body': instance.body,
      'isCompleted': instance.isCompleted,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

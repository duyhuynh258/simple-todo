// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_sembast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskSembastDTO _$$_TaskSembastDTOFromJson(Map<String, dynamic> json) =>
    _$_TaskSembastDTO(
      body: json['body'] as String,
      isCompleted: json['isCompleted'] as bool,
      isSynchronized: json['isSynchronized'] as bool,
      serverTimeStamp: const ServerTimestampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_TaskSembastDTOToJson(_$_TaskSembastDTO instance) =>
    <String, dynamic>{
      'body': instance.body,
      'isCompleted': instance.isCompleted,
      'isSynchronized': instance.isSynchronized,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

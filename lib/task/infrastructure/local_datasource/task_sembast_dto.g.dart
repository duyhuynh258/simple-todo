// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_sembast_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskSembastDTO _$$_TaskSembastDTOFromJson(Map<String, dynamic> json) =>
    _$_TaskSembastDTO(
      id: json['id'] as String,
      body: json['body'] as String,
      isCompleted: json['isCompleted'] as bool,
      isSynchronized: json['isSynchronized'] as bool,
      localTimeStamp: const LocalTimestampConverter()
          .fromJson(json['localTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_TaskSembastDTOToJson(_$_TaskSembastDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'isCompleted': instance.isCompleted,
      'isSynchronized': instance.isSynchronized,
      'localTimeStamp':
          const LocalTimestampConverter().toJson(instance.localTimeStamp),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingDTO _$$_SettingDTOFromJson(Map<String, dynamic> json) =>
    _$_SettingDTO(
      vibration: json['vibration'] as bool,
      theme: json['theme'] as String,
      fontSize: (json['fontSize'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SettingDTOToJson(_$_SettingDTO instance) =>
    <String, dynamic>{
      'vibration': instance.vibration,
      'theme': instance.theme,
      'fontSize': instance.fontSize,
    };

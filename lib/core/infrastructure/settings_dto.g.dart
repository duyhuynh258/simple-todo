// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsDTO _$$_SettingsDTOFromJson(Map<String, dynamic> json) =>
    _$_SettingsDTO(
      vibration: json['vibration'] as bool,
      theme: json['theme'] as String,
      fontSize: (json['fontSize'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SettingsDTOToJson(_$_SettingsDTO instance) =>
    <String, dynamic>{
      'vibration': instance.vibration,
      'theme': instance.theme,
      'fontSize': instance.fontSize,
    };

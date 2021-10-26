import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/core/domain/settings.dart';
import 'package:simple_todo_app/core/infrastructure/app_theme_value_convert.dart';

part 'settings_dto.freezed.dart';

part 'settings_dto.g.dart';

@freezed
class SettingsDTO with _$SettingsDTO {
  const SettingsDTO._();

  const factory SettingsDTO({
    required bool vibration,
    required String theme,
    required double fontSize,
  }) = _SettingsDTO;

  factory SettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$SettingsDTOFromJson(json);

  factory SettingsDTO.fromSembast(
    RecordSnapshot<String, Map<String, dynamic>> snapshot,
  ) {
    final copiedMap = Map<String, dynamic>.from(snapshot.value);
    return SettingsDTO.fromJson(copiedMap);
  }

  factory SettingsDTO.fromDomain(Settings _) => SettingsDTO(
        vibration: _.vibration,
        theme: _.theme.stringValue,
        fontSize: _.fontSize,
      );

  Map<String, dynamic> toSembast() {
    final json = toJson();
    return json;
  }
}

extension SettingsDTOToDomain on SettingsDTO {
  Settings toDomain() {
    return Settings(
      vibration: vibration,
      theme: theme.toAppTheme,
      fontSize: fontSize,
    );
  }
}

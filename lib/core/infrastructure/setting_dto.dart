import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/domain/settings.dart';
import 'package:simple_todo_app/core/infrastructure/app_theme_value_convert.dart';

part 'setting_dto.freezed.dart';
part 'setting_dto.g.dart';

@freezed
class SettingDTO with _$SettingDTO {
  const SettingDTO._();
  const factory SettingDTO(
      {required bool vibration,
      required String theme,
      required double fontSize}) = _SettingDTO;

  factory SettingDTO.fromJson(Map<String, dynamic> json) =>
      _$SettingDTOFromJson(json);
}

extension SettingDTOToDomain on SettingDTO {
  Settings toDomain() {
    return Settings(
        vibration: vibration, theme: theme.toAppTheme, fontSize: fontSize);
  }
}

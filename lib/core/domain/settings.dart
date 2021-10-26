import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const Settings._();
  const factory Settings({
    required bool vibration,
    required AppTheme theme,
    required double fontSize,
  }) = _Settings;

  factory Settings.byDefault() =>
      const Settings(vibration: true, theme: AppTheme.light, fontSize: 14.0);
}

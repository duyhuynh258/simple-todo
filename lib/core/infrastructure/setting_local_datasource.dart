import 'package:hive/hive.dart';
import 'package:simple_todo_app/core/shared/constants.dart';

class SettingsLocalDataSource {
  bool? vibration() {
    return Hive.box<bool>(settingsBox).get(vibrationKey, defaultValue: true);
  }

  Future<void> setVibration(bool value) async {
    await Hive.box<bool>(settingsBox).put(vibrationKey, value);
  }

  String? theme() {
    return Hive.box<String>(settingsBox)
        .get(settingsThemeKey, defaultValue: settingsThemeKey);
  }

  Future<void> setTheme(String value) async {
    await Hive.box<String>(settingsBox).put(settingsThemeKey, value);
  }

  double? fontSize() {
    return Hive.box<double>(settingsBox)
        .get(fontSizeKey, defaultValue: 16.0); //
  }

  Future<void> setFontSize(double value) async {
    await Hive.box<double>(settingsBox).put(fontSizeKey, value);
  }
}

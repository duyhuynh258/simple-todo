import 'package:dartz/dartz.dart';
import 'package:simple_todo_app/core/domain/failures.dart';
import 'package:simple_todo_app/core/domain/settings.dart';
import 'package:simple_todo_app/core/infrastructure/app_theme_value_convert.dart';
import 'package:simple_todo_app/core/infrastructure/setting_dto.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';

class SettingsRepository {
  SettingsRepository(this.settingsLocalDataSource);

  final SettingsLocalDataSource settingsLocalDataSource;

  Either<Failure, Settings> getCurrentSettings() {
    try {
      final settingsJson = <String, dynamic>{
        'vibration': settingsLocalDataSource.vibration(),
        'theme': settingsLocalDataSource.theme(),
      };
      return right(SettingDTO.fromJson(settingsJson).toDomain());
    } catch (e) {
      return left(Failure.storage(errorMessage: e.toString()));
    }
  }

  void changeVibration(bool value) =>
      settingsLocalDataSource.setVibration(value);

  void changeFontSize(double size) => settingsLocalDataSource.setFontSize(size);

  Either<Failure, Unit> changeTheme(AppTheme appTheme) {
    try {
      settingsLocalDataSource.setTheme(appTheme.stringValue);
      return right(unit);
    } catch (e) {
      return left(Failure.storage(errorMessage: e.toString()));
    }
  }
}

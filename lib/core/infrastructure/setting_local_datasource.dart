import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/core/infrastructure/exceptions.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/infrastructure/settings_dto.dart';
import 'package:simple_todo_app/core/shared/constants.dart';

class SettingsLocalDataSource {
  SettingsLocalDataSource(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(settingsStore);

  Future<void> setVibration({required bool value}) async {
    final settingsDTO = await getSettings();
    await _upsertSettings(settingsDTO.copyWith(vibration: value));
  }

  Future<void> setTheme(String value) async {
    final settingsDTO = await getSettings();
    await _upsertSettings(settingsDTO.copyWith(theme: value));
  }

  Future<void> setFontSize(double value) async {
    final settingsDTO = await getSettings();
    await _upsertSettings(settingsDTO.copyWith(fontSize: value));
  }

  Future<void> _upsertSettings(SettingsDTO settingsDTO) async {
    await _store.record('default').put(
          _sembastDatabase.instance,
          settingsDTO.toSembast(),
        );
  }

  Future<SettingsDTO> getSettings({SettingsDTO? defaultValue}) async {
    final record = _store.record('default');
    final recordSnapshot = await record.getSnapshot(_sembastDatabase.instance);
    if (recordSnapshot == null) {
      if (defaultValue == null) {
        throw const SettingLocalDataSourceException.notInitialized();
      }
      await _upsertSettings(defaultValue);
      return defaultValue;
    }

    return SettingsDTO.fromSembast(recordSnapshot);
  }
}

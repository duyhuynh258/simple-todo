import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class SettingLocalDataSourceException
    with _$SettingLocalDataSourceException
    implements Exception {
  const factory SettingLocalDataSourceException.notInitialized() =
      _SettingsNotInitialized;
}

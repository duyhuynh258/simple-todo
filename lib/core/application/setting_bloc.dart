//State
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/domain/failures.dart';
import 'package:simple_todo_app/core/domain/settings.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';

part 'setting_bloc.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({Failure? failure, required Settings settings}) =
      _SettingsState;

  factory SettingsState.initial() =>
      SettingsState(settings: Settings.byDefault());
}

class SettingsBloc extends Cubit<SettingsState> {
  SettingsBloc(this._settingsRepository) : super(SettingsState.initial());

  final SettingsRepository _settingsRepository;

  Future<void> init() async {
    final failureOrSettings = await _settingsRepository.getCurrentSettings();
    failureOrSettings.fold((l) {
      emit(state.copyWith(failure: l));
    }, (r) {
      emit(state.copyWith(settings: r));
    });
  }

  void changeVibration(bool value) {
    _settingsRepository.changeVibration(value);
    emit(SettingsState(settings: state.settings.copyWith(vibration: value)));
  }

  void changeFontSize(double value) {
    _settingsRepository.changeFontSize(value);
    emit(SettingsState(settings: state.settings.copyWith(fontSize: value)));
  }
}

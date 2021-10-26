import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_todo_app/core/domain/failures.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';

part 'theme_bloc.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState({required AppTheme appTheme, Failure? failure}) =
      _ThemeState;

  factory ThemeState.initial() => const ThemeState(appTheme: AppTheme.light);
}

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc(this.settingsRepository) : super(ThemeState.initial());

  final SettingsRepository settingsRepository;

  Future<void> init() async {
    await settingsRepository.getCurrentSettings().then((failureOrSettings) {
      failureOrSettings.fold((l) {
        emit(state.copyWith(failure: l));
        log('Failed to load theme from local settings.');
      }, (r) {
        emit(ThemeState(appTheme: r.theme));
      });
    });
  }

  void changeTheme(AppTheme appTheme) {
    settingsRepository.changeTheme(appTheme).fold(
      (l) {
        emit(state.copyWith(failure: l));
      },
      (r) => emit(ThemeState(appTheme: appTheme)),
    );
  }
}

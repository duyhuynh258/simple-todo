import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/core/application/setting_bloc.dart';
import 'package:simple_todo_app/core/application/theme_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_initializer.dart';
import 'package:simple_todo_app/core/presentation/app/app_widget.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    AppInitializer? appInitializer,
    SembastDatabase? sembastDatabaseMock,
    AuthRepository? authRepositoryMock,
    SettingsRepository? settingsRepositoryMock,
    SettingsLocalDataSource? settingsLocalDataSourceMock,
    ThemeBloc? themeBlocMock,
    SettingsBloc? settingsBlocMock,
    AuthBloc? authBlocMock,
    FirebaseFirestore? firebaseFirestoreMock,
    NavigatorObserver? mockNavigatorObserver,
  }) {
    return pumpWidget(
      AppWidget(
        appInitializer: appInitializer,
        sembastDatabase: sembastDatabaseMock,
        authRepository: authRepositoryMock,
        settingsRepository: settingsRepositoryMock,
        settingsLocalDataSource: settingsLocalDataSourceMock,
        themeBloc: themeBlocMock,
        settingsBloc: settingsBlocMock,
        authBloc: authBlocMock,
        firebaseFirestore: firebaseFirestoreMock,
        navigatorObserver: mockNavigatorObserver,
        home: widget,
      ),
    );
  }

  Future<void> pumpFullApp({
    AppInitializer? appInitializer,
    SembastDatabase? sembastDatabaseMock,
    AuthRepository? authRepositoryMock,
    SettingsRepository? settingsRepositoryMock,
    SettingsLocalDataSource? settingsLocalDataSourceMock,
    ThemeBloc? themeBlocMock,
    SettingsBloc? settingsBlocMock,
    AuthBloc? authBlocMock,
    FirebaseFirestore? firebaseFirestoreMock,
    NavigatorObserver? mockNavigatorObserver,
  }) {
    return pumpWidget(
      AppWidget(
        appInitializer: appInitializer,
        sembastDatabase: sembastDatabaseMock,
        authRepository: authRepositoryMock,
        settingsRepository: settingsRepositoryMock,
        settingsLocalDataSource: settingsLocalDataSourceMock,
        themeBloc: themeBlocMock,
        settingsBloc: settingsBlocMock,
        authBloc: authBlocMock,
        firebaseFirestore: firebaseFirestoreMock,
        navigatorObserver: mockNavigatorObserver,
      ),
    );
  }
}

class SembastDatabaseMock extends Mock implements SembastDatabase {}

class SettingsBlocMock extends Mock implements SettingsBloc {}

class ThemeBlocMock extends Mock implements ThemeBloc {}

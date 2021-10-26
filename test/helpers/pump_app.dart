import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/core/application/setting_bloc.dart';
import 'package:simple_todo_app/core/application/theme_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_widget.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    required AppInitializeFunction appInitializeFunction,
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
        appInitializeFunction: appInitializeFunction,
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
    AppInitializeFunction? appInitializeFunction,
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
        appInitializeFunction: appInitializeFunction,
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

Future<void> initializeTestApp(
  BuildContext context, {
  required bool mounted,
}) async {}

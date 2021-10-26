import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/auth/infrastructure/firebase_user_mapper.dart';
import 'package:simple_todo_app/core/application/setting_bloc.dart';
import 'package:simple_todo_app/core/application/theme_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';
import 'package:simple_todo_app/core/presentation/app/app_widget.dart';
import 'package:simple_todo_app/l10n/l10n.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(
    Widget widget, {
    SembastDatabase? sembastDatabaseMock,
    AuthRepository? authRepositoryMock,
    SettingsRepository? settingsRepositoryMock,
    SettingsLocalDataSource? settingsLocalDataSourceMock,
    ThemeBloc? themeBlocMock,
    SettingsBloc? settingsBlocMock,
    AuthBloc? authBlocMock,
    FirebaseFirestore? firebaseFirestoreMock,
  }) {
    return pumpWidget(
      MultiRepositoryProvider(
        providers: [
          if (sembastDatabaseMock == null)
            RepositoryProvider<SembastDatabase>(
              create: (context) => SembastDatabase(),
            )
          else
            RepositoryProvider.value(value: sembastDatabaseMock),
          if (firebaseFirestoreMock == null)
            RepositoryProvider<FirebaseFirestore>(
              create: (context) => FirebaseFirestore.instance,
            )
          else
            RepositoryProvider<FirebaseFirestore>.value(
              value: firebaseFirestoreMock,
            ),
          if (authRepositoryMock == null)
            RepositoryProvider<AuthRepository>(
              create: (context) => AuthRepository(
                FirebaseAuth.instance,
                GoogleSignIn(),
                FirebaseUserMapper(),
              ),
            )
          else
            RepositoryProvider.value(value: authRepositoryMock),
          if (settingsRepositoryMock == null)
            RepositoryProvider<SettingsRepository>(
              create: (context) => SettingsRepository(
                settingsLocalDataSourceMock ??
                    SettingsLocalDataSource(context.read<SembastDatabase>()),
              ),
            )
          else
            RepositoryProvider.value(value: settingsRepositoryMock),
        ],
        child: Builder(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                //Creating cubit/bloc that will be use in whole app or
                //will be use in multiple screens
                if (themeBlocMock == null)
                  BlocProvider<ThemeBloc>(
                    create: (_) =>
                        ThemeBloc(context.read<SettingsRepository>()),
                  )
                else
                  BlocProvider.value(value: themeBlocMock),
                if (settingsBlocMock == null)
                  BlocProvider<SettingsBloc>(
                    create: (_) =>
                        SettingsBloc(context.read<SettingsRepository>()),
                  )
                else
                  BlocProvider.value(value: settingsBlocMock),
                if (authBlocMock == null)
                  BlocProvider<AuthBloc>(
                    create: (_) => AuthBloc(context.read<AuthRepository>()),
                  )
                else
                  BlocProvider.value(value: authBlocMock),
              ],
              child: Builder(
                builder: (context) {
                  final currentTheme =
                      context.watch<ThemeBloc>().state.appTheme;
                  return MaterialApp(
                    theme: appThemeData[currentTheme]!.copyWith(
                      textTheme: GoogleFonts.poppinsTextTheme(
                        Theme.of(context).textTheme,
                      ),
                    ),
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                    ],
                    supportedLocales: AppLocalizations.supportedLocales,
                    home: FutureBuilder<void>(
                      future: initializeApp(context, mounted: true),
                      builder: (
                        BuildContext context,
                        AsyncSnapshot<dynamic> snapshot,
                      ) {
                        return widget;
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

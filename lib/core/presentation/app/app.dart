import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/auth/infrastructure/auth_repository.dart';
import 'package:simple_todo_app/auth/infrastructure/firebase_user_mapper.dart';
import 'package:simple_todo_app/core/application/setting_bloc.dart';
import 'package:simple_todo_app/core/application/theme_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_router.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';
import 'package:simple_todo_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
            create: (context) => AuthRepository(
                FirebaseAuth.instance, GoogleSignIn(), FirebaseUserMapper())),
        RepositoryProvider<SettingsRepository>(
            create: (context) => SettingsRepository(SettingsLocalDataSource())),
      ],
      child: MultiBlocProvider(
        providers: [
          //Creating cubit/bloc that will be use in whole app or
          //will be use in multiple screens
          BlocProvider<ThemeBloc>(
              create: (_) => ThemeBloc(context.read<SettingsRepository>())),
          BlocProvider<SettingsBloc>(
              create: (_) => SettingsBloc(context.read<SettingsRepository>())),
          BlocProvider<AuthBloc>(
              create: (_) => AuthBloc(context.read<AuthRepository>())),
        ],
        child: Builder(builder: (context) {
          final currentTheme = context.watch<ThemeBloc>().state.appTheme;
          return MaterialApp(
            theme: appThemeData[currentTheme]!.copyWith(
                textTheme:
                    GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.supportedLocales,
            initialRoute: Routes.splash,
            onGenerateRoute: Routes.onGenerateRouted,
          );
        }),
      ),
    );
  }
}

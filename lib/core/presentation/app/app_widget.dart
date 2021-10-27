import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
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
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/infrastructure/setting_local_datasource.dart';
import 'package:simple_todo_app/core/infrastructure/setting_repository.dart';
import 'package:simple_todo_app/core/presentation/app/app_initializer.dart';
import 'package:simple_todo_app/core/presentation/app/app_router.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';
import 'package:simple_todo_app/l10n/l10n.dart';
import 'package:simple_todo_app/splash/presentation/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({
    Key? key,
    this.appInitializer,
    this.sembastDatabase,
    this.authRepository,
    this.settingsRepository,
    this.settingsLocalDataSource,
    this.themeBloc,
    this.settingsBloc,
    this.authBloc,
    this.firebaseFirestore,
    this.navigatorObserver,
    this.home,
  }) : super(key: key);

  final AppInitializer? appInitializer;
  final SembastDatabase? sembastDatabase;
  final AuthRepository? authRepository;
  final SettingsRepository? settingsRepository;
  final SettingsLocalDataSource? settingsLocalDataSource;
  final ThemeBloc? themeBloc;
  final SettingsBloc? settingsBloc;
  final AuthBloc? authBloc;
  final FirebaseFirestore? firebaseFirestore;
  final NavigatorObserver? navigatorObserver;
  final Widget? home;

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppInitializer appInitializer;

  @override
  void initState() {
    super.initState();
    appInitializer = widget.appInitializer ?? AppInitializer();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        if (widget.sembastDatabase == null)
          RepositoryProvider<SembastDatabase>(
            create: (context) => SembastDatabase(),
          )
        else
          RepositoryProvider.value(value: widget.sembastDatabase),
        if (widget.firebaseFirestore == null)
          RepositoryProvider<FirebaseFirestore>(
            create: (context) => FirebaseFirestore.instance,
          )
        else
          RepositoryProvider<FirebaseFirestore>.value(
            value: widget.firebaseFirestore!,
          ),
        if (widget.authRepository == null)
          RepositoryProvider<AuthRepository>(
            create: (context) => AuthRepository(
              FirebaseAuth.instance,
              GoogleSignIn(),
              FirebaseUserMapper(),
            ),
          )
        else
          RepositoryProvider.value(value: widget.authRepository),
        if (widget.settingsRepository == null)
          RepositoryProvider<SettingsRepository>(
            create: (context) => SettingsRepository(
              widget.settingsLocalDataSource ??
                  SettingsLocalDataSource(context.read<SembastDatabase>()),
            ),
          )
        else
          RepositoryProvider.value(value: widget.settingsRepository),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              //Creating cubit/bloc that will be use in whole app or
              //will be use in multiple screens
              if (widget.themeBloc == null)
                BlocProvider<ThemeBloc>(
                  create: (context) =>
                      ThemeBloc(context.read<SettingsRepository>()),
                )
              else
                BlocProvider.value(value: widget.themeBloc!),
              if (widget.settingsBloc == null)
                BlocProvider<SettingsBloc>(
                  create: (context) =>
                      SettingsBloc(context.read<SettingsRepository>()),
                )
              else
                BlocProvider.value(value: widget.settingsBloc!),
              if (widget.authBloc == null)
                BlocProvider<AuthBloc>(
                  create: (context) {
                    return AuthBloc(context.read<AuthRepository>());
                  },
                )
              else
                BlocProvider.value(value: widget.authBloc!),
            ],
            child: Builder(
              builder: (context) {
                final currentTheme = context.watch<ThemeBloc>().state.appTheme;
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
                  onGenerateRoute: Routes.onGenerateRouted,
                  home: widget.home ??
                      FutureBuilder<void>(
                        future:
                            appInitializer.initFunc(context, mounted: mounted),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<void> snapshot,
                        ) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.none:
                              return ErrorWidget('ConnectionState.none');
                            case ConnectionState.done:
                              if (snapshot.hasError == false) {
                                return BlocListener<AuthBloc, AuthState>(
                                  listener: (context, state) async {
                                    await state.whenOrNull(
                                      authenticated: (user) async {
                                        await Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                          Routes.home,
                                          (route) => route.settings.name == '/',
                                        );
                                      },
                                      unauthenticated: () async {
                                        await Navigator.of(context)
                                            .pushNamedAndRemoveUntil(
                                          Routes.signIn,
                                          (route) => route.settings.name == '/',
                                        );
                                      },
                                    );
                                  },
                                  child: const SplashPage(),
                                );
                              }
                              break;
                            case ConnectionState.waiting:
                            case ConnectionState.active:
                              return const SplashPage();
                          }
                          return ErrorWidget('App initialize failed');
                        },
                      ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

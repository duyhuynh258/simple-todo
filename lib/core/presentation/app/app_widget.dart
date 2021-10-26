import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:simple_todo_app/core/presentation/app/app_router.dart';
import 'package:simple_todo_app/core/presentation/app/app_theme.dart';
import 'package:simple_todo_app/l10n/l10n.dart';
import 'package:simple_todo_app/splash/presentation/splash_page.dart';

typedef AppInitializeFunction = Future<void> Function(
  BuildContext, {
  required bool mounted,
});

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppInitializeFunction appInitializeFunction;

  @override
  void initState() {
    super.initState();
    appInitializeFunction = initializeApp;
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SembastDatabase>(
          create: (context) => SembastDatabase(),
        ),
        RepositoryProvider<AuthRepository>(
          create: (context) => AuthRepository(
            FirebaseAuth.instance,
            GoogleSignIn(),
            FirebaseUserMapper(),
          ),
        ),
        RepositoryProvider<SettingsRepository>(
          create: (context) => SettingsRepository(
            SettingsLocalDataSource(context.read<SembastDatabase>()),
          ),
        ),
        RepositoryProvider<FirebaseFirestore>(
          create: (context) => FirebaseFirestore.instance,
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              //Creating cubit/bloc that will be use in whole app or
              //will be use in multiple screens
              BlocProvider<ThemeBloc>(
                create: (_) => ThemeBloc(context.read<SettingsRepository>()),
              ),
              BlocProvider<SettingsBloc>(
                create: (_) => SettingsBloc(context.read<SettingsRepository>()),
              ),
              BlocProvider<AuthBloc>(
                create: (_) => AuthBloc(context.read<AuthRepository>()),
              ),
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
                  home: FutureBuilder<void>(
                    future: appInitializeFunction(context, mounted: mounted),
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<dynamic> snapshot,
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

Future<void> flutterInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
}

Future<void> initializeApp(
  BuildContext context, {
  required bool mounted,
}) async {
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
  if (mounted) {
    await context.read<SembastDatabase>().init().then((_) async {
      await Future.wait([
        context.read<SettingsBloc>().init(),
        context.read<ThemeBloc>().init(),
      ]);
    });
  }

  await Firebase.initializeApp();

  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: false);
}

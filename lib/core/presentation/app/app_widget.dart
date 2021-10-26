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

typedef AppInitializeFunction = Future<void> Function(
  BuildContext, {
  required bool mounted,
});

class AppWidget extends StatefulWidget {
  const AppWidget({
    Key? key,
    this.appInitializeFunction,
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

  final AppInitializeFunction? appInitializeFunction;
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
  late AppInitializeFunction appInitializeFunction;

  @override
  void initState() {
    super.initState();
    appInitializeFunction = widget.appInitializeFunction ?? initializeApp;
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
                  create: (_) => ThemeBloc(context.read<SettingsRepository>()),
                )
              else
                BlocProvider.value(value: widget.themeBloc!),
              if (widget.settingsBloc == null)
                BlocProvider<SettingsBloc>(
                  create: (_) =>
                      SettingsBloc(context.read<SettingsRepository>()),
                )
              else
                BlocProvider.value(value: widget.settingsBloc!),
              if (widget.authBloc == null)
                BlocProvider<AuthBloc>(
                  create: (_) => AuthBloc(context.read<AuthRepository>()),
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
                            appInitializeFunction(context, mounted: mounted),
                        builder: Routes.homeBuilder,
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

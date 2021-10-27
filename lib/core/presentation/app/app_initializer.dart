import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/core/application/setting_bloc.dart';
import 'package:simple_todo_app/core/application/theme_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';

class AppInitializer {
  /// [customFirebaseInit] for testing purpose.
  AppInitializer({VoidCallback? customSystemChromeInit}) {
    initFunc = (BuildContext context, {required bool mounted}) async {
      if (initCompleter.isCompleted) {
        return;
      }
      try {
        if (customSystemChromeInit != null) {
          customSystemChromeInit.call();
        } else {
          if (!kIsWeb) {
            await SystemChrome.setPreferredOrientations(
              [DeviceOrientation.portraitUp],
            );
            SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarBrightness: Brightness.dark,
                statusBarIconBrightness: Brightness.dark,
              ),
            );
          }
        }

        if (mounted) {
          await context.read<SembastDatabase>().init().then((_) async {
            await Future.wait([
              context.read<SettingsBloc>().init(),
              context.read<ThemeBloc>().init(),
            ]);
          });
        }

        initCompleter.complete(null);
      } catch (e) {
        log('Initialized app failed: ${e.toString()}');
      }
    };
  }

  late MaterialAppInitializeFunction initFunc;
  final Completer<void> initCompleter = Completer<void>();
}

typedef MaterialAppInitializeFunction = Future<void> Function(
  BuildContext, {
  required bool mounted,
});

Future<void> globalInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: false);
}

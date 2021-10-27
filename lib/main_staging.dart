import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_todo_app/core/presentation/app/app_bloc_observer.dart';
import 'package:simple_todo_app/core/presentation/app/app_initializer.dart';
import 'package:simple_todo_app/core/presentation/app/app_widget.dart';

Future<void> main() async {
  await globalInitialize();
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async => runApp(const AppWidget()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

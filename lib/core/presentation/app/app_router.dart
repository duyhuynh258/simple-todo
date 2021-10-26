import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/auth/presentation/sign_in_page.dart';
import 'package:simple_todo_app/auth/presentation/sign_up_page.dart';
import 'package:simple_todo_app/core/application/home_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/shared/user_info_reader.dart';
import 'package:simple_todo_app/splash/presentation/splash_page.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';
import 'package:simple_todo_app/task/presentation/task_home_page.dart';

class Routes {
  static const home = 'home';
  static const signIn = 'signIn';
  static const splash = 'splash';
  static const signUp = 'signUp';

  static Route<dynamic> onGenerateRouted(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return CupertinoPageRoute<void>(
          builder: (context) => const SplashPage(),
        );
      case home:
        return CupertinoPageRoute<void>(
          builder: (context) {
            return RepositoryProvider(
              create: (context) {
                final currentUser = context.currentUser;
                return TaskRepository(
                  TaskRemoteDataSource(
                    FirebaseFirestore.instance,
                    currentUser!,
                  ),
                  TaskLocalDatasource(context.read<SembastDatabase>()),
                );
              },
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => HomeBloc(),
                  ),
                  BlocProvider(
                    create: (context) =>
                        TaskWatcherBloc(context.read<TaskRepository>())
                          ..add(const TaskWatcherEvent.allTasksRequested()),
                  ),
                ],
                child: const TaskHomePage(),
              ),
            );
          },
        );

      case signIn:
        return CupertinoPageRoute<void>(
          builder: (context) => const SignInPage(),
        );
      case signUp:
        return CupertinoPageRoute<void>(
          builder: (context) => const SignUpPage(),
        );

      default:
        return CupertinoPageRoute<void>(builder: (context) => const Scaffold());
    }
  }
}

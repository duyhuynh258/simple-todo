import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/core/application/home_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/presentation/pages/settings_page.dart';
import 'package:simple_todo_app/core/shared/user_info_reader.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';
import 'package:simple_todo_app/task/presentation/all_tasks_list_page.dart';
import 'package:simple_todo_app/task/presentation/completed_tasks_list_page.dart';
import 'package:simple_todo_app/task/presentation/tab_bar_widget.dart';
import 'package:simple_todo_app/task/presentation/todo_tasks_list_page.dart';

class TaskHomePageWithProvider extends StatelessWidget {
  const TaskHomePageWithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) {
        final currentUser = context.currentUser;
        return TaskRepository(
          TaskRemoteDataSource(
            context.read<FirebaseFirestore>(),
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
            create: (context) => TaskWatcherBloc(context.read<TaskRepository>())
              ..add(const TaskWatcherEvent.allTasksRequested()),
          ),
        ],
        child: Builder(
          builder: (context) {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) async {
                await state.whenOrNull(
                  unauthenticated: () async {
                    await context.read<TaskRepository>().clearLocalTasks();
                  },
                );
              },
              child: const _TaskHomePage(),
            );
          },
        ),
      ),
    );
  }
}

class _TaskHomePage extends StatefulWidget {
  const _TaskHomePage({Key? key}) : super(key: key);

  @override
  _TaskHomePageState createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<_TaskHomePage> {
  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return Scaffold(
            floatingActionButton: const _AddTaskButton(),
            bottomNavigationBar: const TabBarWidget(),
            body: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
              builder: (context, state) {
                if (state.isInProgress) {
                  return CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                  );
                }
                if (state.failure != null) {
                  return state.failure!.maybeMap(
                    orElse: () {
                      return ErrorWidget(state.failure!.toString());
                    },
                    localSuccessButSyncFailed: (localSuccessButSyncFailed) {
                      return const _TaskHomePageBody();
                    },
                  );
                }
                return const _TaskHomePageBody();
              },
            ),
          );
        },
      ),
    );
  }
}

class _TaskHomePageBody extends StatelessWidget {
  const _TaskHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: context.watch<HomeBloc>().state.selectedTabIndex,
      children: [
        //uncompletedTasksPage
        const TodoTasksListPage(),
        //completedTasksPage
        const CompletedTasksListPage(),
        //allTasksPage
        const AllTasksListPage(),
        //settingsPage
        SettingsPage(),
      ],
    );
  }
}

class _AddTaskButton extends StatelessWidget {
  const _AddTaskButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isNotTodoPage = context
            .select((HomeBloc homeBloc) => homeBloc.state.selectedTabIndex) !=
        0;
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        final bool shouldNotShowFAB = isKeyboardVisible || isNotTodoPage;
        if (shouldNotShowFAB) {
          return const SizedBox();
        }
        return FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          splashColor: Theme.of(context).scaffoldBackgroundColor,
          highlightElevation: 3.0,
          onPressed: () {
            context
                .read<HomeBloc>()
                .changeToUnCompletedTab(forAction: TaskAction.create);
            context
                .read<TaskWatcherBloc>()
                .add(const TaskWatcherEvent.createdDraftTask());
          },
          child: const Icon(Icons.add),
        );
      },
    );
  }
}

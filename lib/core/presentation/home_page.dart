import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/application/home_bloc.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/shared/user_info_reader.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/infrastructure/local_datasource/task_local_datasource.dart';
import 'package:simple_todo_app/task/infrastructure/remote_datasource/task_remote_data_source.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';
import 'package:simple_todo_app/task/presentation/all_tasks_list_page.dart';
import 'package:simple_todo_app/task/presentation/completed_tasks_list_page.dart';
import 'package:simple_todo_app/task/presentation/tab_bar_widget.dart';
import 'package:simple_todo_app/task/presentation/todo_tasks_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) {
        final currentUser = context.currentUser;
        return TaskRepository(
          TaskRemoteDataSource(FirebaseFirestore.instance, currentUser!),
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
                TaskWatcherBloc(context.read<TaskRepository>()),
          ),
        ],
        child: Builder(builder: (context) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
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
            ),
            bottomNavigationBar: const NavigationBarWidget(),
            body: IndexedStack(
              index: context.watch<HomeBloc>().state.selectedTabIndex,
              children: [
                //uncompletedTasksPage
                TodoTasksListPage(),
                //completedTasksPage
                CompletedTasksListPage(),
                //allTasksPage
                AllTasksListPage(),
              ],
            ),
          );
        }),
      ),
    );
  }
}

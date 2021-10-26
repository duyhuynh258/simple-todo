import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/presentation/task_item_widget.dart';

class AllTasksListPage extends StatefulWidget {
  const AllTasksListPage({Key? key}) : super(key: key);

  @protected
  @override
  _AllTasksListPageState createState() => _AllTasksListPageState();
}

class _AllTasksListPageState extends State<AllTasksListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
          builder: (context, state) {
            final List<Task> tasks = state.allTasks;
            if (tasks.isEmpty) {
              return const Center(child: Text('No todo task'));
            }

            return ListView.separated(
              itemBuilder: (context, index) {
                return TaskItemWidgetWithProvider(
                  key: Key(tasks[index].id),
                  task: tasks[index],
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: tasks.length,
            );
          },
        ),
      ),
    );
  }
}

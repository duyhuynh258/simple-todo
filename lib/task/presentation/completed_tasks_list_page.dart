import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/shared/colors.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/presentation/task_item_widget.dart';

class CompletedTasksListPage extends StatefulWidget {
  const CompletedTasksListPage({Key? key}) : super(key: key);

  @override
  _CompletedTasksListPageState createState() => _CompletedTasksListPageState();
}

class _CompletedTasksListPageState extends State<CompletedTasksListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: completedBackgroundColor,
      body: SafeArea(
        child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
          builder: (context, state) {
            final List<Task> tasks = state.completedTasks;
            if (tasks.isEmpty) {
              return const Center(child: Text('No completed task'));
            }

            return ListView.separated(
              itemBuilder: (context, index) {
                return TaskItemWidgetWithProvider(
                  key: Key(tasks[index].id.value),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/shared/colors.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/presentation/task_item_widget.dart';

class TodoTasksListPage extends StatefulWidget {
  const TodoTasksListPage({Key? key}) : super(key: key);

  @override
  _TodoTasksListPageState createState() => _TodoTasksListPageState();
}

class _TodoTasksListPageState extends State<TodoTasksListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBackgroundColor,
      body: SafeArea(
        child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
          builder: (context, state) {
            final List<Task> tasks = state.unCompletedTasks;
            if (tasks.isEmpty) {
              return const Center(child: Text('No todo task'));
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

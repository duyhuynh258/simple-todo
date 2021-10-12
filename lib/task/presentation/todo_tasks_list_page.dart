import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';
import 'package:simple_todo_app/core/presentation/widgets/rounded_check_box.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

class TodoTasksListPage extends StatefulWidget {
  const TodoTasksListPage({Key? key}) : super(key: key);

  @override
  _TodoTasksListPageState createState() => _TodoTasksListPageState();
}

class _TodoTasksListPageState extends State<TodoTasksListPage> {
  final Map<Task, TaskItemBloc> taskItemBlocsMap = {};
  final Map<Task, FocusNode> taskItemFocusNodesMap = {};
  final Map<Task, TextEditingController> taskItemTextControllersMap = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBackgroundColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: BlocBuilder<TaskWatcherBloc, TaskWatcherState>(
            builder: (context, state) {
              final List<Task> tasks = state.unCompletedTasks;
              if (tasks.isEmpty) {
                return Center(child: Text('No todo task'));
              }
              for (final task in tasks) {
                final bloc =
                    TaskItemBloc(context.read<TaskRepository>(), task: task);
                taskItemBlocsMap[task] = bloc;
                taskItemFocusNodesMap[task] = FocusNode();
                taskItemTextControllersMap[task] = TextEditingController();
              }

              return ListView.separated(
                  itemBuilder: (context, index) {
                    final taskItemBloc = taskItemBlocsMap[tasks[index]];
                    final taskItemFocusNode =
                        taskItemFocusNodesMap[tasks[index]];
                    final taskItemTextController =
                        taskItemTextControllersMap[tasks[index]];
                    if (taskItemBloc == null) {
                      return ErrorWidget.withDetails(
                          message: 'taskItemBloc is null, please reload page');
                    }
                    return BlocBuilder<TaskItemBloc, TaskItemState>(
                      bloc: taskItemBloc,
                      builder: (context, state) {
                        return ListTile(
                          leading: RoundCheckBox(
                            borderColor: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.7),
                            checkedColor: completedColor,
                            uncheckedColor: todoColor,
                            onTap: (selected) {
                              if (state.task.isComplete) {
                                taskItemBloc
                                    .add(const TaskItemEvent.unCompleted());
                              } else {
                                taskItemBloc
                                    .add(const TaskItemEvent.completed());
                              }
                            },
                          ),
                          title: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Todo body',
                              // labelText: 'Todo',
                            ),
                            focusNode: taskItemFocusNode,
                            maxLines: null,
                            controller: taskItemTextController,
                            keyboardType: TextInputType.text,
                          ),
                        );
                      },
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: tasks.length);
            },
          ),
        ),
      ),
    );
  }
}

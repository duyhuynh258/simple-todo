import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';
import 'package:simple_todo_app/core/presentation/ui_utils.dart';
import 'package:simple_todo_app/core/presentation/widgets/rounded_check_box.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

class TaskItemWidget extends StatefulWidget {
  const TaskItemWidget({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  _TaskItemWidgetState createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  late TextEditingController _bodyTextController;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _bodyTextController = TextEditingController();
  }

  @override
  void dispose() {
    _bodyTextController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: Key(widget.task.id),
      create: (context) {
        final bloc = TaskItemBloc(
          context.read<TaskRepository>(),
          task: widget.task,
          onAction: (Task? resultTask) {
            if (resultTask == null) {
              return;
            }
            context
                .read<TaskWatcherBloc>()
                .add(TaskWatcherEvent.tasksUpdated(tasks: [resultTask]));
          },
        );
        _focusNode.dispose();
        _focusNode = FocusNode()
          ..addListener(() {
            if (_focusNode.hasFocus == false) {
              final submittedTask = bloc.state.task;
              context
                  .read<TaskWatcherBloc>()
                  .add(TaskWatcherEvent.taskEndEdited(task: submittedTask));
            }
          });
        return bloc;
      },
      child: Builder(
        builder: (context) {
          return BlocBuilder<TaskItemBloc, TaskItemState>(
            builder: (context, state) {
              final bool isAutoFocus = state.task.isEmpty;
              return ListTile(
                leading: RoundCheckBox(
                  borderColor:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.7),
                  checkedColor: completedColor,
                  uncheckedColor: todoBackgroundColor,
                  isChecked: state.task.isComplete,
                  shouldCheckTheBox: () {
                    if (state.task.body.isEmpty) {
                      UiUtils.setSnackBar(
                          'Empty task cannot be completed', context, false);
                      return false;
                    }
                    return true;
                  },
                  onTap: () {
                    if (state.task.isComplete) {
                      context
                          .read<TaskItemBloc>()
                          .add(const TaskItemEvent.unCompleted());
                    } else {
                      context
                          .read<TaskItemBloc>()
                          .add(const TaskItemEvent.completed());
                    }
                  },
                ),
                title: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Todo body',
                    // labelText: 'Todo',
                  ),
                  focusNode: _focusNode,
                  enabled: state.task.isComplete == false,
                  autofocus: isAutoFocus,
                  maxLines: null,
                  controller: _bodyTextController,
                  keyboardType: TextInputType.text,
                  onSubmitted: (taskBody) {
                    log('taskBody: $taskBody');
                  },
                  onChanged: (text) {
                    context
                        .read<TaskItemBloc>()
                        .add(TaskItemEvent.bodyChanged(body: text));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/presentation/widgets/rounded_check_box.dart';
import 'package:simple_todo_app/core/shared/colors.dart';
import 'package:simple_todo_app/core/shared/ui_utils.dart';
import 'package:simple_todo_app/task/application/task_item/task_item_bloc.dart';
import 'package:simple_todo_app/task/application/task_watcher/task_watcher_bloc.dart';
import 'package:simple_todo_app/task/domain/task.dart';

class TaskItemWidgetWithProvider extends StatelessWidget {
  const TaskItemWidgetWithProvider({Key? key, required this.task})
      : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    final taskItemBloc =
        context.watch<TaskWatcherBloc>().taskItemBlocs[task.id.value];
    if (taskItemBloc == null) {
      return ErrorWidget('TaskItemBloc with taskId = ${task.id.value},is null');
    }
    return BlocProvider<TaskItemBloc>.value(
      key: key,
      value: taskItemBloc,
      child: _TaskItemWidget(
        task: task,
        key: key,
      ),
    );
  }
}

class _TaskItemWidget extends StatefulWidget {
  const _TaskItemWidget({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  _TaskItemWidgetState createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<_TaskItemWidget> {
  late TextEditingController _bodyTextController;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode()
      ..addListener(() {
        if (_focusNode.hasFocus == false) {
          final submittedTask = context.read<TaskItemBloc>().state.task;
          context
              .read<TaskWatcherBloc>()
              .add(TaskWatcherEvent.taskEndEdited(task: submittedTask));
        }
      });
    _bodyTextController = TextEditingController()..text = widget.task.body;
  }

  @override
  void dispose() {
    _bodyTextController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskItemBloc, TaskItemState>(
      listener: (context, state) {
        if (state.failure != null) {
          UiUtils.setSnackBar(
            state.failure.toString(),
            context,
            showAction: false,
          );
          context
              .read<TaskItemBloc>()
              .add(const TaskItemEvent.failureHandled());
        }
        if (_focusNode.hasFocus == false) {
          // This will update other task items listen to same TaskItemBloc
          _bodyTextController.text = state.task.body;
        }
      },
      builder: (context, state) {
        final bool isAutoFocus = state.task.isDraft;
        final bool isTaskCompleted = state.task.isCompleted;
        return ListTile(
          leading: RoundCheckBox(
            borderColor:
                Theme.of(context).colorScheme.secondary.withOpacity(0.7),
            checkedColor: completedColor,
            uncheckedColor: todoBackgroundColor,
            isChecked: isTaskCompleted,
            shouldCheckTheBox: () {
              if (state.task.body.isEmpty) {
                UiUtils.setSnackBar(
                  'Empty task cannot be completed',
                  context,
                  showAction: false,
                );
                return false;
              }
              return true;
            },
            onTap: () {
              if (isTaskCompleted) {
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
            enabled: isTaskCompleted == false,
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
  }
}

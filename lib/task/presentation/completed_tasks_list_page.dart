import 'package:flutter/material.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

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
    );
  }
}

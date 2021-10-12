import 'package:flutter/material.dart';

class AllTasksListPage extends StatefulWidget {
  const AllTasksListPage({Key? key}) : super(key: key);

  @override
  _AllTasksListPageState createState() => _AllTasksListPageState();
}

class _AllTasksListPageState extends State<AllTasksListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}

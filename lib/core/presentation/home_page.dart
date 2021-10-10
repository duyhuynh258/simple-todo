import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/task/application/tab_bar_bloc.dart';
import 'package:simple_todo_app/task/presentation/tab_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabBarBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          bottomNavigationBar: NavigationBarWidget(),
        );
      }),
    );
  }
}

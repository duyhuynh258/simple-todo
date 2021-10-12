import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/application/home_bloc.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({
    Key? key,
  }) : super(key: key);
  static const Duration switchTabAnimationDuration =
      Duration(milliseconds: 150);

  @override
  _TabBarWidgetState createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  late int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavyBar(
          selectedIndex: state.selectedTabIndex,
          onItemSelected: (index) {
            context.read<HomeBloc>().changeTab(index);
          },
          itemCornerRadius: 16,
          animationDuration: TabBarWidget.switchTabAnimationDuration,
          curve: Curves.easeIn,
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: todoColor,
                inactiveColor: Theme.of(context).colorScheme.secondary,
                icon: const Icon(Icons.list_alt_outlined),
                title: const Text('Todo')),
            BottomNavyBarItem(
                activeColor: completedColor,
                inactiveColor: Theme.of(context).colorScheme.secondary,
                icon: const Icon(Icons.done_rounded),
                title: const Text('Completed')),
            BottomNavyBarItem(
                activeColor: Theme.of(context).primaryColor,
                inactiveColor: Theme.of(context).colorScheme.secondary,
                icon: const Icon(Icons.filter_list),
                title: const Text('All')),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }
}

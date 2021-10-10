import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

class NavigationBarWidget extends StatefulWidget {
  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget>
    with TickerProviderStateMixin {
  late int currentIndex;
  late AnimationController completedIconController;
  late Animation<double> completedAnimation;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: currentIndex,
      onItemSelected: changePage,
      itemCornerRadius: 16,
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
  }

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    completedIconController = AnimationController(
        value: 0,
        duration: const Duration(milliseconds: 350),
        reverseDuration: const Duration(milliseconds: 350),
        vsync: this);
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
      if (index == 1) {
        completedIconController.forward(from: 0);
      } else {
        completedIconController.reverse(from: 1);
      }
    });
  }
}

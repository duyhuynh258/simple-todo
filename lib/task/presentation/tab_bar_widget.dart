import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_todo_app/core/application/home_bloc.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_todo_app/auth/application/auth_bloc.dart';
import 'package:simple_todo_app/core/presentation/widgets/page_background_gradient_container.dart';
import 'package:simple_todo_app/core/shared/ui_utils.dart';

class Menu {
  const Menu(
      {required this.title,
      required this.imagePath,
      required this.routeName,
      required this.routeArguments});
  final String title;
  final String imagePath;
  final String routeName;
  final Map<String, dynamic> routeArguments;
}

class SettingsPage extends StatelessWidget {
  SettingsPage({
    Key? key,
  }) : super(key: key);

  final List<Menu> menuList = [
    const Menu(
      imagePath: 'assets/images/logout_icon.svg',
      routeArguments: <String, dynamic>{},
      routeName: '',
      title: 'Log out',
    ),
  ];

  void onMenuTap(String menuItem, BuildContext context) {
    if (menuItem == 'Log out') {
      showDialog<void>(
          context: context,
          builder: (_) => AlertDialog(
                content: Text(
                  'Are you sure to logout?',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();

                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.signedOut());
                      },
                      child: Text(
                        'Yes',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'No',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                ],
              ));
    }
  }

  Widget _buildMenuContainer(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (0.84),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Theme.of(context).backgroundColor,
        boxShadow: [UiUtils.buildBoxShadow()],
      ),
      padding: const EdgeInsets.only(top: 5.0),
      child: Column(
        children: menuList
            .map((e) => ListTile(
                  onTap: () {
                    onMenuTap(e.title, context);
                  },
                  title: Text(
                    e.title,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  leading: Container(
                    width: 60,
                    //decoration: BoxDecoration(border: Border.all()),
                    transform: Matrix4.identity()..scale(0.45),
                    transformAlignment: Alignment.center,
                    child: SvgPicture.asset(
                      e.imagePath,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PageBackgroundGradientContainer(),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  _buildMenuContainer(context),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

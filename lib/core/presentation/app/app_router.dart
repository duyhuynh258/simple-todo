import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_todo_app/auth/presentation/sign_in_page.dart';
import 'package:simple_todo_app/auth/presentation/sign_up_page.dart';
import 'package:simple_todo_app/core/presentation/home_page.dart';
import 'package:simple_todo_app/splash/presentation/splash_page.dart';

class Routes {
  static const home = 'home';
  static const signIn = 'signIn';
  static const splash = 'splash';
  static const signUp = 'signUp';

  static Route<dynamic> onGenerateRouted(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return CupertinoPageRoute<void>(
            builder: (context) => const SplashPage());
      case home:
        return CupertinoPageRoute<void>(builder: (context) => const HomePage());

      case signIn:
        return CupertinoPageRoute<void>(
            builder: (context) => const SignInPage());
      case signUp:
        return CupertinoPageRoute<void>(
            builder: (context) => const SignUpPage());

      default:
        return CupertinoPageRoute<void>(builder: (context) => const Scaffold());
    }
  }
}

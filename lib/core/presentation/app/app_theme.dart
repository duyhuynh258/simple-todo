import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

enum AppTheme { light, dark }

final appThemeData = {
  AppTheme.light: ThemeData(
      shadowColor: primaryColor.withOpacity(0.25),
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: pageBackgroundColor,
      backgroundColor: backgroundColor,
      canvasColor: canvasColor,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: secondaryColor,
          )),
  AppTheme.dark: ThemeData(
    shadowColor: darkPrimaryColor.withOpacity(0.25),
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: darkPageBackgroundColor,
    backgroundColor: darkBackgroundColor,
    canvasColor: darkCanvasColor,
    colorScheme: ThemeData().colorScheme.copyWith(
          brightness: Brightness.dark,
          secondary: darkSecondaryColor,
        ),
  ),
};

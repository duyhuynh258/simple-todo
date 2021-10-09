import 'package:simple_todo_app/core/presentation/app/app_theme.dart';
import 'package:simple_todo_app/core/shared/constants.dart';

extension AppThemeToString on AppTheme {
  String get stringValue {
    if (this == AppTheme.dark) {
      return darkThemeValue;
    } else {
      return lightThemeValue;
    }
  }
}

extension StringToAppTheme on String {
  AppTheme get toAppTheme {
    if (this == darkThemeValue) {
      return AppTheme.dark;
    } else {
      return AppTheme.light;
    }
  }
}

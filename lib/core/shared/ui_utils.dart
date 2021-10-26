import 'package:flutter/material.dart';

class UiUtils {
  static void setSnackBar(
    String msg,
    BuildContext context, {
    required bool showAction,
    Function? onPressedAction,
    Duration? duration,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          msg,
          textAlign: showAction ? TextAlign.start : TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        behavior: SnackBarBehavior.fixed,
        duration: duration ?? const Duration(seconds: 2),
        backgroundColor: Theme.of(context).primaryColor,
        action: showAction
            ? SnackBarAction(
                label: 'Retry',
                onPressed: onPressedAction as VoidCallback? ?? () {},
                textColor: Theme.of(context).backgroundColor,
              )
            : null,
        elevation: 2.0,
      ),
    );
  }

  static LinearGradient buildLinerGradient(
    List<Color> colors,
    Alignment begin,
    Alignment end,
  ) {
    return LinearGradient(colors: colors, begin: begin, end: end);
  }

  static BoxShadow buildBoxShadow({
    Offset? offset,
    double? blurRadius,
    Color? color,
  }) {
    return BoxShadow(
      color: color ?? Colors.black.withOpacity(0.1),
      blurRadius: blurRadius ?? 10.0,
      offset: offset ?? const Offset(5.0, 5.0),
    );
  }
}

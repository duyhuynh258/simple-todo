import 'package:flutter/material.dart';
import 'package:simple_todo_app/core/presentation/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.route,
    required this.title,
    this.bg,
    required this.titleColor,
    required this.btnWidth,
    this.shadow,
  }) : super(key: key);

  final VoidCallback? route;
  final String title;
  final Color? bg, titleColor;
  final double btnWidth;
  final bool? shadow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: btnWidth,
        child: Material(
          borderRadius: BorderRadius.circular(100.0),
          color: bg,
          child: InkWell(
            highlightColor: battlequiz6.withOpacity(0.1),
            splashColor: battlequiz6.withOpacity(0.5),
            onTap: route,
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: bg == null
                  ? BoxDecoration(
                      gradient: battlequizGradient,
                      borderRadius: BorderRadius.circular(100.0),
                    )
                  : BoxDecoration(
                      color: bg,
                      boxShadow: [
                        if (shadow == true) boxShadow else transBoxShadow
                      ],
                      borderRadius: BorderRadius.circular(100.0),
                    ),
              child: Text(
                title,
                style: TextStyle(fontSize: 16, color: titleColor),
              ),
            ),
          ),
        ));
  }
}

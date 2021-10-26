import 'package:flutter/material.dart';
import 'package:simple_todo_app/core/shared/ui_utils.dart';

class PageBackgroundGradientContainer extends StatelessWidget {
  const PageBackgroundGradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: UiUtils.buildLinerGradient(
          [
            Theme.of(context).scaffoldBackgroundColor,
            Theme.of(context).canvasColor
          ],
          Alignment.topCenter,
          Alignment.bottomCenter,
        ),
      ),
    );
  }
}

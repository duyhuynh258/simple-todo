import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CircularProgressContainer extends StatelessWidget {
  const CircularProgressContainer(
      {Key? key, required this.useWhiteLoader, this.heightAndWidth})
      : super(key: key);
  final bool useWhiteLoader;
  final double? heightAndWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: heightAndWidth ?? 75.0,
      height: heightAndWidth ?? 75.0,
      child: Lottie.asset(
        useWhiteLoader
            ? 'assets/animations/whiteLoading.json'
            : 'assets/animations/loading.json',
      ),
    );
  }
}

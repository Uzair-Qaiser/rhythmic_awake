import 'package:flutter/material.dart';
import 'package:rhythmic_awake/core/constants/app_images.dart';
class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
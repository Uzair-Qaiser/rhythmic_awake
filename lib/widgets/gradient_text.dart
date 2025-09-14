import 'package:flutter/material.dart';
import 'package:rhythmic_awake/config/theme/app_colors.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText(
      this.text, {
        super.key,
        required this.gradient,
        this.style = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width* 1.3, bounds.height * 1.35),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

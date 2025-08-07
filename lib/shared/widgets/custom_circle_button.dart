import 'package:cipher/core/constantse/color_palette.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const CustomCircleButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: FloatingActionButton(
        heroTag: key,
        backgroundColor: ColorsPalette.sevenColor,
        shape: const CircleBorder(),
        onPressed: onPressed,
        child: Icon(icon, color: ColorsPalette.fouthColor, size: 24),
      ),
    );
  }
}

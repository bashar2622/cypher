import 'package:cipher/core/constantse/color_palette.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;
  final double padding;
  const CustomCard({super.key, required this.widget, this.padding = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsPalette.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }
}

import 'dart:ui';
import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomCardNegativeStyle extends StatelessWidget {
  final String title;
  const CustomCardNegativeStyle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 3.5),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: ColorsPalette.negativeColor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Text(title, style: AppTextStyle.customCardNegativeStyle),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.2,
              sigmaY: 0.2,
            ), // المزيد من الضبابية
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0), // خلفية شفافة
              ),
            ),
          ),
        ],
      ),
    );
  }
}

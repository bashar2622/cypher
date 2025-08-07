import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class InvestmentCategoryCard extends StatelessWidget {
  final String title;
  final String icon;
  const InvestmentCategoryCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsPalette.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 20, height: 20),
          const SizedBox(width: 20),
          Text(title, style: AppTextStyle.captionStyle3),
        ],
      ),
    );
  }
}

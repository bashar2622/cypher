import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class LoginLink extends StatelessWidget {
  final String text;
  final String actionText;
  final VoidCallback onTap;

  const LoginLink({
    required this.text,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyle.captionStyle.copyWith(
              color: ColorsPalette.secondColor,
              fontWeight: FontWeight.w100,
              fontSize: 14,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              actionText,
              style: AppTextStyle.bodyStyle.copyWith(
                color: ColorsPalette.whaiteColor,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

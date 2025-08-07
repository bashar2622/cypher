import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/shared/extensions/widget_extenstion.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String title;
  final Function? func;
  final Widget? child;

  const CustomButton({
    super.key,
    this.child,
    required this.color,
    required this.title,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: child ?? Text(title, style: AppTextStyle.captionStyle3),
      ),
    ).onTap(() {
      if (func != null) {
        func!();
      }
    });
  }
}

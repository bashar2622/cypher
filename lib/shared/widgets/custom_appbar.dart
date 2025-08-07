import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: ColorsPalette.whaiteColor),
      centerTitle: true,
      title: Text(title, style: AppTextStyle.appBartitleStyle),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(icon, color: ColorsPalette.whaiteColor),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

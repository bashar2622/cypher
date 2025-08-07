import 'package:cipher/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:cipher/core/constantse/color_palette.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: ColorsPalette.backgroundColor,
      iconTheme: IconThemeData(color: ColorsPalette.whaiteColor),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsPalette.backgroundColor,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: ColorsPalette.whaiteColor,
          fontWeight: FontWeight.bold,
          fontSize: AppTextStyle.titleFontSize,
        ),
        iconTheme: IconThemeData(size: 24, color: ColorsPalette.whaiteColor),
      ),
    );
  }
}

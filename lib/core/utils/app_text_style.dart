import 'package:cipher/core/constantse/color_palette.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const double titleFontSize = 22.0;
  static const double subtitleFontSize = 18.0;
  static const double bodyFontSize = 16.0;
  static const double captionFontSize = 14.0;
  static const double captionFontSize2 = 12.0;
  static const double headlineFontSyize = 28.0;

  static TextStyle get customCardPositiveStyle => TextStyle(
    fontSize: captionFontSize,
    fontWeight: FontWeight.w600,
    color: ColorsPalette.positiveColor,
  );
  static TextStyle get customCardNegativeStyle => TextStyle(
    fontSize: captionFontSize,
    fontWeight: FontWeight.w600,
    color: ColorsPalette.negativeColor,
  );
  static TextStyle get customNumberStyle => TextStyle(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.bold,
    color: ColorsPalette.whaiteColor,
  );

  static TextStyle get headlineStyle => TextStyle(
    fontSize: headlineFontSyize,
    fontWeight: FontWeight.bold,
    color: ColorsPalette.whaiteColor,
  );

  static TextStyle get titleStyle => TextStyle(
    fontSize: titleFontSize,
    fontWeight: FontWeight.bold,
    color: ColorsPalette.whaiteColor,
  );

  static TextStyle get subtitleStyle => TextStyle(
    fontSize: subtitleFontSize,
    fontWeight: FontWeight.w600,
    color: ColorsPalette.secondColor,
  );
  static TextStyle get buttonStyle => TextStyle(
    fontSize: captionFontSize,
    fontWeight: FontWeight.w600,
    color: ColorsPalette.whaiteColor,
  );
  static TextStyle get bodyStyle => TextStyle(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w500,
    color: ColorsPalette.secondColor,
  );
  static TextStyle get appBartitleStyle => TextStyle(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w700,
    color: ColorsPalette.whaiteColor,
  );

  static TextStyle get captionStyle => TextStyle(
    fontSize: captionFontSize,
    fontWeight: FontWeight.w400,
    color: ColorsPalette.secondColor,
  );
  static TextStyle get captionStyle2 => TextStyle(
    fontSize: captionFontSize2,
    fontWeight: FontWeight.w400,
    color: ColorsPalette.whaiteColor,
  );
  static TextStyle get captionStyle3 => TextStyle(
    fontSize: captionFontSize,
    fontWeight: FontWeight.w500,
    color: ColorsPalette.whaiteColor,
  );
}

import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  // إضافة padding بسرعة
  Widget withPadding([EdgeInsets padding = const EdgeInsets.all(8)]) =>
      Padding(padding: padding, child: this);

  // توسيط أي عنصر
  Widget centered() => Center(child: this);

  // جعله قابل للنقر
  Widget onTap(VoidCallback onTap) =>
      GestureDetector(onTap: onTap, child: this);
}

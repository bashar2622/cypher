import 'package:cipher/core/constantse/color_palette.dart';
import 'package:flutter/material.dart';

class LoadingDialog {
  static void show(BuildContext context, {String text = 'جاري التحميل...'}) {
    showDialog(
      context: context,
      barrierDismissible: false, // يمنع المستخدم من إغلاقه
      builder: (_) => PopScope(
        child: Dialog(
          backgroundColor: ColorsPalette.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(color: Colors.white),
                const SizedBox(height: 16),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}

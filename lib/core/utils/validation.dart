String? validateEmail(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'البريد الإلكتروني مطلوب';
  }

  // Regex بسيط لفحص صيغة الإيميل
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!emailRegex.hasMatch(value.trim())) {
    return 'صيغة البريد الإلكتروني غير صحيحة';
  }

  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return 'كلمة المرور مطلوبة';
  }

  if (value.length < 8) {
    return 'كلمة المرور يجب أن تكون 10 أحرف على الأقل';
  }

  return null;
}

String? validateName(String? value) {
  if (value == null || value.trim().isEmpty) {
    return 'الاسم مطلوب';
  }

  if (value.trim().length <= 5) {
    return 'الاسم يجب أن يحتوي على حرفين على الأقل';
  }

  return null;
}

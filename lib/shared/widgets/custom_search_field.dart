import 'package:cipher/shared/widgets/custom_circle_button.dart';
import 'package:cipher/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final VoidCallback onSearch;
  final IconData icon;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.onSearch,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextField(hintText: hintText, label: ''),
        ),
        SizedBox(width: 15),
        CustomCircleButton(onPressed: onSearch, icon: icon),
      ],
    );
  }
}

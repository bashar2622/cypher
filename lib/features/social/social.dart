import 'package:cipher/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Social', icon: Icons.person_pin),
    );
  }
}

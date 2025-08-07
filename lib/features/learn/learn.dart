import 'package:cipher/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Learn', icon: Icons.person_pin),
    );
  }
}

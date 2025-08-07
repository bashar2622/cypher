import 'package:cipher/features/Ai/presentation/widgets/suggest_data.dart';
import 'package:cipher/shared/widgets/custom_search_field.dart';

import 'package:flutter/material.dart';

class ChatPart extends StatelessWidget {
  const ChatPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Spacer(),
        SuggestData(),
        Spacer(),
        CustomSearchBar(
          hintText: 'Ask Ai tour finance',
          onSearch: () {},
          icon: Icons.send_rounded,
        ),

        const SizedBox(height: 8),
      ],
    );
  }
}

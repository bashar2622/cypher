import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/features/Ai/chat_part.dart';
import 'package:cipher/features/Ai/goal_tracking_part.dart';
import 'package:cipher/shared/widgets/custom_appbar.dart';
import 'package:cipher/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AiScreen extends StatefulWidget {
  const AiScreen({super.key});

  @override
  State<AiScreen> createState() => _AiState();
}

class _AiState extends State<AiScreen> {
  int selectedPart = 0;

  void changeSelcetedPart(index) {
    setState(() {
      selectedPart = index;
    });
  }

  List part = ['Chat', 'Goal Tracking'];
  List aiBody = [ChatPart(), GoalTrackingPart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'AI', icon: Icons.replay_circle_filled_sharp),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorsPalette.fiveColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...List.generate(
                    part.length,
                    (index) => Expanded(
                      child: CustomButton(
                        func: () {
                          changeSelcetedPart(index);
                        },
                        color: selectedPart == index
                            ? ColorsPalette.sevenColor
                            : ColorsPalette.fiveColor,
                        title: part[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
            Expanded(child: aiBody[selectedPart]),
          ],
        ),
      ),
    );
  }
}

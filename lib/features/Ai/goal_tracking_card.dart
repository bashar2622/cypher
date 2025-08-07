import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/shared/widgets/custom_card_positive_style.dart';
import 'package:flutter/material.dart';

class GoalTrackingCard extends StatelessWidget {
  final String title;
  final String targetAmount;
  final String currentAmount;
  final double progress;
  final String status;
  final String suggestion;

  const GoalTrackingCard({
    super.key,
    required this.title,
    required this.targetAmount,
    required this.currentAmount,
    required this.progress,
    required this.status,
    required this.suggestion,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorsPalette.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Goal title and status
            Row(
              children: [
                Text(
                  title,
                  style: AppTextStyle.titleStyle.copyWith(fontSize: 18),
                ),
                Spacer(),
                CustomCardPositiveStyle(title: 'complete'),
                SizedBox(width: 10),
                Icon(Icons.more_vert_rounded),
              ],
            ),
            const SizedBox(height: 16),
            // Target and Current Amount
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Target: ', style: AppTextStyle.bodyStyle.copyWith()),
                    SizedBox(height: 5),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: ColorsPalette.fiveColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        targetAmount,
                        style: AppTextStyle.captionStyle.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Current: ',
                      style: AppTextStyle.bodyStyle.copyWith(
                        // color: ColorsPalette.fouthColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: ColorsPalette.fiveColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        targetAmount,
                        style: AppTextStyle.captionStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Progress Bar
            LinearProgressIndicator(
              value: progress,
              backgroundColor: ColorsPalette.secondColor.withOpacity(0.2),
              color: ColorsPalette.sevenColor,
              borderRadius: BorderRadius.circular(20),
              minHeight: 7,
            ),
            const SizedBox(height: 20),
            // Suggestion Text
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Great Progress try',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.secondColor,
                    ),
                  ),
                  TextSpan(
                    text: ' automaticly adn extra \$100 monthly trasnfer ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.whaiteColor,
                    ),
                  ),
                  TextSpan(
                    text: 'this month. Great job!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorsPalette.secondColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:cipher/features/Ai/goal_tracking_card.dart';
import 'package:flutter/material.dart';

class GoalTrackingPart extends StatelessWidget {
  const GoalTrackingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(height: 15),
        itemBuilder: (context, index) => GoalTrackingCard(
          title: 'Emergency Fund',
          targetAmount: '\$15,000',
          currentAmount: '\$16,000',
          progress: 1.0, // 100% progress
          status: 'Completed',
          suggestion:
              'Great progress! Try automating an extra \$100 monthly transfer to reach your goal 3 months sooner.',
        ),
      ),
    );
  }
}

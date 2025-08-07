import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/features/Ai/data/datasources/ai_suggest_data.dart';
import 'package:flutter/material.dart';

class SuggestData extends StatelessWidget {
  const SuggestData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics:
            const NeverScrollableScrollPhysics(), // لو بدك تمنع التمرير داخل الشبكة
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorsPalette.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AiSuggestData[index].icon, width: 24, height: 24),
              const SizedBox(height: 8),
              Text(
                AiSuggestData[index].title,
                style: AppTextStyle.captionStyle3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

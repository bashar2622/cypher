import 'package:cipher/core/constantse/color_palette.dart' show ColorsPalette;
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/shared/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({super.key});

  @override
  State<SecondCard> createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListTile(
              leading: Icon(Icons.book, size: 26),
              title: Text('Stocks', style: AppTextStyle.captionStyle3),
              trailing: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: ColorsPalette.fiveColor),
                  color: ColorsPalette.fiveColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // This ensures the row takes only the needed space
                  children: [
                    Text('45 %', style: AppTextStyle.captionStyle3),
                    Text('\t|\t', style: AppTextStyle.captionStyle3),
                    Text('86,67', style: AppTextStyle.captionStyle3),
                  ],
                ),
              ),
            ),
          ),
          Divider(color: ColorsPalette.fouthColor),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ListTile(
              leading: Icon(Icons.book, size: 26),
              title: Text(
                'Bonds',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsPalette.secondColor,
                ),
              ),
              trailing: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: ColorsPalette.fiveColor),
                  color: ColorsPalette.fiveColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // This ensures the row takes only the needed space
                  children: [
                    Text('45 %', style: AppTextStyle.captionStyle3),
                    Text('\t|\t', style: AppTextStyle.captionStyle3),
                    Text('86,67', style: AppTextStyle.captionStyle3),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

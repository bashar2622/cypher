import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/shared/widgets/custom_card_positive_style.dart';
import 'package:flutter/material.dart';
import 'package:cipher/core/constantse/color_palette.dart';

class NetWorthCard extends StatelessWidget {
  final String amount;
  final String changePercent;
  final String descriptionHighlight;
  final String descriptionSuffix;
  final int selectedPeriodIndex;
  final Function(int) onPeriodChanged;
  final List<String> periodTitles;

  const NetWorthCard({
    super.key,
    required this.amount,
    required this.changePercent,
    required this.descriptionHighlight,
    required this.descriptionSuffix,
    required this.selectedPeriodIndex,
    required this.onPeriodChanged,
    required this.periodTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsPalette.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total net worth',
            style: TextStyle(
              fontSize: AppTextStyle.bodyFontSize,
              fontWeight: FontWeight.bold,
              color: ColorsPalette.secondColor,
            ),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorsPalette.whaiteColor,
                ),
              ),
              SizedBox(width: 7),
              CustomCardPositiveStyle(
                title:
                    '+'
                    '$changePercent',
              ),
            ],
          ),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'You\'ve increased your net worth by',
                  style: TextStyle(
                    fontSize: AppTextStyle.bodyFontSize,
                    fontWeight: FontWeight.w600,
                    color: ColorsPalette.secondColor,
                  ),
                ),
                TextSpan(
                  text: ' $descriptionHighlight\n',
                  style: TextStyle(
                    fontSize: AppTextStyle.bodyFontSize,
                    fontWeight: FontWeight.w600,
                    color: ColorsPalette.whaiteColor,
                  ),
                ),
                TextSpan(
                  text: descriptionSuffix,
                  style: TextStyle(
                    fontSize: AppTextStyle.bodyFontSize,
                    fontWeight: FontWeight.w600,
                    color: ColorsPalette.secondColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          PeriodSelector(
            titles: periodTitles,
            selectedIndex: selectedPeriodIndex,
            onChanged: onPeriodChanged,
          ),
        ],
      ),
    );
  }
}

class PeriodSelector extends StatelessWidget {
  final List<String> titles;
  final int selectedIndex;
  final Function(int) onChanged;
  const PeriodSelector({
    super.key,
    required this.titles,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        titles.length,
        (index) => Expanded(
          child: InkWell(
            onTap: () => onChanged(index),
            child: Container(
              margin: EdgeInsets.only(
                right: index == titles.length - 1 ? 0 : 8,
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? ColorsPalette.fiveColor
                    : ColorsPalette.sixColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  titles[index],
                  style: TextStyle(
                    fontSize: AppTextStyle.bodyFontSize,
                    color: ColorsPalette.fouthColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

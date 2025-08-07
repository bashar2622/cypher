import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/features/home/presentation/widgets/chart.dart';
import 'package:cipher/shared/widgets/custom_card_positive_style.dart';
import 'package:cipher/shared/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatefulWidget {
  const FirstCard({super.key});

  @override
  State<FirstCard> createState() => _FirstCardState();
}

class _FirstCardState extends State<FirstCard> {
  int selectedDays = 0;
  List title = ['week', 'month', 'year'];
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Total net worth', style: AppTextStyle.bodyStyle),
          SizedBox(height: 8),
          Row(
            children: [
              Text('\$324,750', style: AppTextStyle.headlineStyle),
              SizedBox(width: 7),
              CustomCardPositiveStyle(
                title:
                    '+'
                    '2.8',
              ),
            ],
          ),
          SizedBox(height: 24),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'You\'ve increased your net worth by',
                  style: AppTextStyle.captionStyle,
                ),
                TextSpan(
                  text: ' \$8,950 \n',
                  style: AppTextStyle.customNumberStyle,
                ),
                TextSpan(
                  text: 'this month. Great job!',
                  style: AppTextStyle.captionStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedDays = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: index == 1 ? 10 : 0,
                      ),
                      padding: EdgeInsets.all(5),

                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          width: 1,
                          color: selectedDays != index
                              ? ColorsPalette.fiveColor
                              : ColorsPalette.sixColor,
                        ),
                        color: selectedDays == index
                            ? ColorsPalette.fiveColor
                            : ColorsPalette.sixColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          title[index],
                          style: AppTextStyle.captionStyle2.copyWith(
                            fontWeight: selectedDays == index
                                ? FontWeight.bold
                                : FontWeight.w600,
                            color: selectedDays == index
                                ? ColorsPalette.whaiteColor
                                : ColorsPalette.secondColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 192, child: LineChartSample2()),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        ColorsPalette.fiveColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Withdraw', style: AppTextStyle.buttonStyle),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        ColorsPalette.sevenColor,
                      ),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Invest now',
                        style: AppTextStyle.buttonStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

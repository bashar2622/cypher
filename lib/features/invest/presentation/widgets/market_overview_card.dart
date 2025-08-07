import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/shared/widgets/custom_card.dart';
import 'package:cipher/shared/widgets/custom_card_negative_style.dart';
import 'package:cipher/shared/widgets/custom_card_positive_style.dart';
import 'package:flutter/material.dart';

class MarketOverviewCard extends StatelessWidget {
  final List<String> coin;
  const MarketOverviewCard({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: 0,
      widget: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Market Overview', style: AppTextStyle.subtitleStyle),
                Icon(Icons.refresh),
              ],
            ),
          ),
          Divider(
            color: ColorsPalette.secondColor,
            height: 0.5,
            thickness: 0.5,
          ),
          ...List.generate(
            coin.length,
            (index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(coin[index], style: AppTextStyle.captionStyle3),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsPalette.fiveColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '147.89.78',
                              style: AppTextStyle.captionStyle.copyWith(
                                color: ColorsPalette.whaiteColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          index == coin.length - 1
                              ? CustomCardNegativeStyle(
                                  title:
                                      '-'
                                      '3.7'
                                      '%',
                                )
                              : CustomCardPositiveStyle(
                                  title:
                                      '+'
                                      '2.8'
                                      '%',
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: ColorsPalette.secondColor,
                  height: 0.5,
                  thickness: 0.5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

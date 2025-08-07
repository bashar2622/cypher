import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/shared/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerHomeLoading extends StatelessWidget {
  const ShimmerHomeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ShimmerFirstCard(),
        SizedBox(height: 16),
        ShimmerSecondCard(),
      ],
    );
  }
}

class ShimmerFirstCard extends StatelessWidget {
  const ShimmerFirstCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      widget: Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 16, width: 120, color: Colors.white),
            const SizedBox(height: 8),
            Row(
              children: [
                Container(height: 28, width: 100, color: Colors.white),
                const SizedBox(width: 10),
                Container(height: 20, width: 40, color: Colors.white),
              ],
            ),
            const SizedBox(height: 16),
            Container(height: 40, width: double.infinity, color: Colors.white),
            const SizedBox(height: 24),
            Row(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: index == 1 ? 10 : 0,
                    ),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Container(height: 192, width: double.infinity, color: Colors.white),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: Container(height: 40, color: Colors.white)),
                const SizedBox(width: 16),
                Expanded(child: Container(height: 40, color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShimmerSecondCard extends StatelessWidget {
  const ShimmerSecondCard({super.key});

  Widget shimmerItem() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(height: 26, width: 26, color: Colors.white),
          const SizedBox(width: 16),
          Expanded(child: Container(height: 14, color: Colors.white)),
          const SizedBox(width: 16),
          Container(height: 26, width: 80, color: Colors.white),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      widget: Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade700,
        child: Column(
          children: [
            shimmerItem(),
            Divider(color: ColorsPalette.fouthColor),
            shimmerItem(),
          ],
        ),
      ),
    );
  }
}

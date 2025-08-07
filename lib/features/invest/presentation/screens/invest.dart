import 'package:cipher/core/constantse/app_screens_keys.dart';
import 'package:cipher/features/invest/presentation/widgets/investment_category.dart';
import 'package:cipher/features/invest/presentation/widgets/market_overview_card.dart';
import 'package:cipher/shared/widgets/custom_appbar.dart';
import 'package:cipher/shared/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

class InvestScreen extends StatelessWidget {
  const InvestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List data = ['Stocks', 'Bonds', 'Real estate', 'Crypto'];
    final List<String> coin = ['SP 500', 'Nasdaq', 'Nascam', 'Bitcoin'];
    final List<String> coinImage = [
      '${AppKeys.coins}stocks.png',
      '${AppKeys.coins}bonds.png',
      '${AppKeys.coins}real_state.png',
      '${AppKeys.coins}crypto.png',
    ];

    return Scaffold(
      appBar: CustomAppBar(title: 'Invest', icon: Icons.person),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(
                icon: Icons.search,
                hintText: 'Search stocks, cyphercrypto',
                onSearch: () {},
              ),
              SizedBox(height: 20),
              MarketOverviewCard(coin: coin),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: data.length,

                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 2 / 1,
                ),
                itemBuilder: (context, index) => InvestmentCategoryCard(
                  title: data[index],
                  icon: coinImage[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

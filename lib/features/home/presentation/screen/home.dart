import 'package:cipher/core/services/dependency_injection.dart';
import 'package:cipher/features/home/presentation/state_managment/home_bloc.dart';
import 'package:cipher/features/home/presentation/widgets/first_card.dart';
import 'package:cipher/features/home/presentation/widgets/second_card.dart';
import 'package:cipher/features/home/presentation/widgets/shimmer_home_loading.dart';
import 'package:cipher/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeBloc>()..add(GetDataHomeEvent()),
      child: Scaffold(
        appBar: CustomAppBar(title: 'Home', icon: Icons.replay_rounded),
        body: HomeBody(),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is LoadingHomeState) {
              return ShimmerHomeLoading();
            }
            if (state is SuccessHomeState) {
              return Column(
                children: [FirstCard(), SizedBox(height: 16), SecondCard()],
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}

/**i will send you my pages and built shimmer for this don't send until i tell you and send all screens */
  //  child: LineChart(
            // LineChartData(

            //   gridData: FlGridData(show: false),
            //   titlesData: FlTitlesData(show: false),
            //   borderData: FlBorderData(show: false),
            //   lineBarsData: [
            //     LineChartBarData(
            //       spots: [
            //         FlSpot(0, 0),
            //         FlSpot(1, 1000),
            //         FlSpot(2, 1500),
            //         FlSpot(3, 1300),
            //         FlSpot(4, 1800),
            //         FlSpot(5, 2000),
            //         FlSpot(6, 2500),
            //       ],
            //       isCurved: true,
            //       color: Colors.green,
            //       belowBarData: BarAreaData(
            //         show: true,
            //         // ignore: deprecated_member_use
            //         color: Colors.green.withOpacity(0.3),
            //       ),
            //     ),
            //   ],
            // ),

            // ),
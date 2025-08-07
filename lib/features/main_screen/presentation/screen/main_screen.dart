import 'package:cipher/core/constantse/color_palette.dart';
import 'package:cipher/core/utils/app_text_style.dart';
import 'package:cipher/features/main_screen/model/bottom_nav_bar_data.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedScreen = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // AnimatedSwitcher(
          //   duration: const Duration(milliseconds: 300),
          //   transitionBuilder: (Widget child, Animation<double> animation) {
          //     const begin = Offset(1.0, 0.0);
          //     const end = Offset.zero;
          //     final tween = Tween(begin: begin, end: end);
          //     var offsetAnimation = animation.drive(tween);
          //     return
          //     SlideTransition(
          //       position: offsetAnimation,
          //   child:
          IndexedStack(index: selectedScreen, children: screens),
      //);
      //},
      //child: screens[selectedScreen], // الشاشات التي سيتم عرضها
      //),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 0.0,
        padding: EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.all(16),
          height: 78,
          width: double.infinity,
          decoration: BoxDecoration(color: ColorsPalette.primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                bottomNavBarData.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      selectedScreen = index; // تغيير الشاشة عند النقر
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Icon(
                      //   bottomNavBarData[index].icon,
                      //   color: selectedScreen == index
                      //       ? ColorsPalette.whaiteColor
                      //       : ColorsPalette.secondColor,
                      // ),
                      Image.asset(
                        bottomNavBarData[index].icon,
                        width: 24,
                        height: 24,
                        fit: BoxFit.fill,
                        color: selectedScreen == index
                            ? ColorsPalette.whaiteColor
                            : ColorsPalette.secondColor,
                      ),
                      Text(
                        bottomNavBarData[index].name,
                        style: AppTextStyle.captionStyle3.copyWith(
                          color: selectedScreen == index
                              ? ColorsPalette.whaiteColor
                              : ColorsPalette.secondColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

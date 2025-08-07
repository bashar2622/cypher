import 'package:cipher/core/constantse/app_screens_keys.dart';
import 'package:cipher/features/Ai/ai.dart';
import 'package:cipher/features/home/presentation/screen/home.dart';
import 'package:cipher/features/invest/presentation/screens/invest.dart';
import 'package:cipher/features/learn/learn.dart';
import 'package:cipher/features/main_screen/model/bottom_nav_bar_model.dart';
import 'package:cipher/features/social/social.dart';
import 'package:flutter/material.dart';

List<BotomNavBarModel> bottomNavBarData = [
  BotomNavBarModel(name: 'Learn', icon: '${AppKeys.bottomNavBar}Learn.png'),
  BotomNavBarModel(name: 'Invest', icon: '${AppKeys.bottomNavBar}Invest.png'),
  BotomNavBarModel(name: 'Home', icon: '${AppKeys.bottomNavBar}Home.png'),
  BotomNavBarModel(name: 'Ai', icon: '${AppKeys.bottomNavBar}ai.png'),
  BotomNavBarModel(name: 'Social', icon: '${AppKeys.bottomNavBar}profile.png'),
];

final List<Widget> screens = [
  const Learn(), // بدل Container() استخدم const إذا فاضي
  const InvestScreen(),
  const HomeScreen(),
  const AiScreen(),
  const Social(),
];

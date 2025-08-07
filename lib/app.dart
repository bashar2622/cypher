import 'package:cipher/shared/styles/custom_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:cipher/core/config/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      routerConfig: AppRouter.routers,
      //  navigatorKey: AppRouter.navigatorKey, // Correct access to navigatorKey
      //onGenerateRoute: AppRouter.generateRoute,
      // initialRoute: AppScreensKeys.splashScreen, // Correct initial route
    );
  }
}

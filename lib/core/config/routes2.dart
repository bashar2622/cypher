// import 'package:flutter/material.dart';
// import 'package:cipher/features/auth/presentation/screens/sign_up.dart';
// import 'package:cipher/features/main_screen/presentation/screen/main_screen.dart';
// import 'package:cipher/features/splash_screen/splash_screen.dart';
// import 'package:cipher/core/constantse/app_screens_keys.dart';

// class AppRouter {
//   // Global Key for Navigator
//   static final GlobalKey<NavigatorState> navigatorKey =
//       GlobalKey<NavigatorState>();

//   // Route generation logic
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case AppScreensKeys.mainScreen:
//         return _customPageRoute(const MainScreen(), settings);
//       case AppScreensKeys.splashScreen:
//         return _customPageRoute(const SplashScreen(), settings);
//       case AppScreensKeys.signUpScreen:
//         return _customPageRoute(const SignUpScreen(), settings);
//       default:
//         return MaterialPageRoute(builder: (_) => const SplashScreen());
//     }
//   }

//   // Custom Page Route Builder
// static PageRouteBuilder _customPageRoute(Widget page, RouteSettings settings) {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // الحركة التي تبدأ من اليمين إلى اليسار
//       final begin = const Offset(1.0, 0.0);
//       final end = Offset.zero;
//       final tween = Tween(begin: begin, end: end);
//       final offsetAnimation = animation.drive(tween);

//       return SlideTransition(position: offsetAnimation, child: child);
//     },
//   );
// }}

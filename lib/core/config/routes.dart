import 'package:cipher/core/constantse/app_screens_keys.dart';
import 'package:cipher/features/auth/presentation/screens/sign_up.dart';
import 'package:cipher/features/main_screen/presentation/screen/main_screen.dart';
import 'package:cipher/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter routers = GoRouter(
    initialLocation: AppScreensKeys.splashScreen,
    routes: [
      GoRoute(
        path: AppScreensKeys.mainScreen,
        name: AppScreensKeys.mainScreen,
        builder: (context, state) => MainScreen(),
      ),
      GoRoute(
        path: AppScreensKeys.splashScreen,
        name: AppScreensKeys.splashScreen,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SplashScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  final begin = const Offset(1.0, 0.0);
                  final end = Offset.zero;
                  final tween = Tween(begin: begin, end: end);
                  final offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                },
          );
        },
      ),
      GoRoute(
        path: AppScreensKeys.signUpScreen,
        name: AppScreensKeys.signUpScreen,
        builder: (context, state) => SignUpScreen(),
      ),
    ],
  );
}

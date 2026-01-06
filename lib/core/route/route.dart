import 'package:flutter/material.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen3.dart';
import '../../feature/splash/splash_screen.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen1.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen2.dart';
import '../../feature/auth/presentation/screen/create_account_screen.dart';

class AppRoutes {
  static const splash = '/splash';
  static const onboardingScreen1 = '/onboarding1';
  static const onboardingScreen2 = '/onboarding2';
  static const onboardingScreen3 = '/onboarding3';
  static const createAccountScreen = '/createAccount';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    onboardingScreen1: (_) =>  OnboardingScreen1(),
    onboardingScreen2: (_) =>  OnboardingScreen2(),
    onboardingScreen3: (_) =>  OnboardingScreen3(),
    createAccountScreen: (_) => CreateAccountScreen(),
  };
}

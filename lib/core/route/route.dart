import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:partice/feature/auth/create_account_screen.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen1.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen2.dart';
import '../../feature/home/onboardingScreen/view/onboarding_screen3.dart';
import '../../feature/splash/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String onboardingScreen1 = '/onboardingScreen1';
  static const String onboardingScreen2 = '/onboardingScreen2';
  static const String onboardingScreen3 = '/onboardingScreen3';
  static const String createAccountScreen= '/createAccountScreen1';




  final List<GetPage> pages = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: onboardingScreen1, page: () => OnboardingScreen1()),
    GetPage(name: onboardingScreen2, page: () => OnboardingScreen2()),
    GetPage(name: onboardingScreen3, page: () => OnboardingScreen3()),

    GetPage(name: createAccountScreen, page: () => CreateAccountScreen()),




  ];
}
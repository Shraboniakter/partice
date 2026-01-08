part of 'route_import_path.dart';
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RouteName.onboardingScreen1:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen1());
      case RouteName.onboardingScreen2:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen2());
      case RouteName.onboardingScreen3:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen3());
      case RouteName. createAccountScreen:
        return MaterialPageRoute(builder: (_) => const CreateAccountScreen());
      case RouteName. loginScreen:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case RouteName.select_document_type_screen :
        return MaterialPageRoute(builder: (_) => const SelectDocumentTypeScreen());
      case RouteName.forgotPasswordEmailScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordEmailScreen());
      case RouteName.forgotPasswordPhoneScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPhoneScreen());
      case RouteName.scanIdCardScreen:
        return MaterialPageRoute(builder: (_) => const ScanIdCardScreen());
      case RouteName.scanIdCardScreen1:
        return MaterialPageRoute(builder: (_) => const ScanIdCardScreen1());
      case RouteName.scanIdCardScreen2:
        return MaterialPageRoute(builder: (_) => const ScanIdCardScreen2());
      case RouteName.completeYourProfileScreen:
        return MaterialPageRoute(builder: (_) => const CompleteYourProfileScreen());
      case RouteName.confirmIdentityScreen:
        return MaterialPageRoute(builder: (_) => const ConfirmIdentityScreen());
      case RouteName.emailVerificationScreen:
        return MaterialPageRoute(builder: (_) => const EmailVerificationScreen());
      case RouteName.phoneVerificationScreen:
        return MaterialPageRoute(builder: (_) => const PhoneVerificationScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      default:
        return MaterialPageRoute(
          builder: (_) =>
          const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
import 'package:flutter/material.dart';
import 'package:partice/feature/auth/presentation/screen/forgot_password_email_screen.dart';
import 'package:partice/feature/auth/presentation/screen/forgot_password_phone_screen.dart';
import 'package:partice/feature/auth/presentation/screen/login_screen.dart';
import 'package:partice/feature/auth/presentation/screen/select_document_type_screen.dart';
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
  static const loginScreen = '/loginScreen';
  static const select_document_type_screen = '/select_document_type_screen';
  static const forgotPasswordEmailScreen = '/forgotPasswordEmailScreen ';
  static const forgotPasswordPhoneScreen = '/forgotPasswordPhoneScreen ';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    onboardingScreen1: (_) =>  OnboardingScreen1(),
    onboardingScreen2: (_) =>  OnboardingScreen2(),
    onboardingScreen3: (_) =>  OnboardingScreen3(),
    createAccountScreen: (_) => CreateAccountScreen(),
    loginScreen: (_) => LoginScreen(),
    select_document_type_screen : (_) => SelectDocumentTypeScreen(),
    forgotPasswordEmailScreen : (_) =>ForgotPasswordEmailScreen(),
    forgotPasswordPhoneScreen:(_) => ForgotPasswordPhoneScreen()
  };
}

import 'package:flutter/material.dart';
import 'package:partice/feature/auth/presentation/view/complete_your_profile_screen.dart';
import 'package:partice/feature/auth/presentation/view/scan_ID_card_screen.dart';
import 'package:partice/feature/auth/presentation/view/scan_ID_card_screen1.dart';
import 'package:partice/feature/auth/presentation/view/scan_ID_card_screen2.dart';
import '../../feature/auth/presentation/view/confirm_Identity_screen.dart';
import '../../feature/auth/presentation/view/create_account_screen.dart';
import '../../feature/auth/presentation/view/forgot_password_email_screen.dart';
import '../../feature/auth/presentation/view/forgot_password_phone_screen.dart';
import '../../feature/auth/presentation/view/login_screen.dart';
import '../../feature/auth/presentation/view/select_document_type_screen.dart';
import '../../feature/onboardingScreen/view/onboarding_screen1.dart';
import '../../feature/onboardingScreen/view/onboarding_screen2.dart';
import '../../feature/onboardingScreen/view/onboarding_screen3.dart';
import '../../feature/splash/view/splash_screen.dart';


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
  static const scanIdCardScreen = '/scanIdCardScreen';
  static const scanIdCardScreen1 = '/scanIdCardScreen1';
  static const scanIdCardScreen2 = '/scanIdCardScreen2';
  static const confirmIdentityScreen= '/confirmIdentityScreen';
  static const completeYourProfileScreen= '/completeYourProfileScreen';


  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    onboardingScreen1: (_) =>  OnboardingScreen1(),
    onboardingScreen2: (_) =>  OnboardingScreen2(),
    onboardingScreen3: (_) =>  OnboardingScreen3(),
    createAccountScreen: (_) => CreateAccountScreen(),
    loginScreen: (_) => LoginScreen(),
    select_document_type_screen : (_) => SelectDocumentTypeScreen(),
    forgotPasswordEmailScreen : (_) =>ForgotPasswordEmailScreen(),
    forgotPasswordPhoneScreen:(_) => ForgotPasswordPhoneScreen(),
    scanIdCardScreen:(_) => ScanIdCardScreen(),
    scanIdCardScreen1: (_) => ScanIdCardScreen1(),
    scanIdCardScreen2: (_) => ScanIdCardScreen2(),
    confirmIdentityScreen: (_) => ConfirmIdentityScreen(),
    completeYourProfileScreen: (_) => CompleteYourProfileScreen(),


  };
}

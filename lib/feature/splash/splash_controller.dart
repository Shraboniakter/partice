import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:partice/feature/home/onboardingScreen/view/onboarding_screen1.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  @override
  void onInit() {
    print("============>>>timer is on");
    super.onInit();
    _goToNextScreen();
  }

  void _goToNextScreen() async {
    await Future.delayed(Duration(seconds: 5), () {
      print("============>>>timer end");
      Get.off(() =>OnboardingScreen1() );
    });
  }
}

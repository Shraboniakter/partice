import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../core/route/route.dart';

class OnboardingController extends GetxController {
  var pageIndex = 0.obs;

  // next page logic for 3 onboarding screens
  void nextPage() {
    if (pageIndex.value < AppRoutes.onboardingScreen1.length - 1) {
      pageIndex.value++;
      Get.toNamed(AppRoutes.onboardingScreen1[pageIndex.value]);
    } else {
      // last page -> go to location screen
      Get.offAllNamed(AppRoutes.createAccountScreen);
    }
  }


}
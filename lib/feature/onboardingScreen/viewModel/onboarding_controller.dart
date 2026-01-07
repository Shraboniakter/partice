
import 'package:flutter_riverpod/legacy.dart';

class OnboardingController extends StateNotifier<int> {
  OnboardingController() : super(0);

  void next() => state++;
}

final onboardingProvider =
StateNotifierProvider<OnboardingController, int>(
      (ref) => OnboardingController(),
);

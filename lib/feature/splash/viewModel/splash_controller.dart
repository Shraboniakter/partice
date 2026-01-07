import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class SplashController extends StateNotifier<bool> {
  SplashController() : super(false);

  void startTimer(void Function() onComplete) {
    Timer(const Duration(seconds: 5), () {
      onComplete();
    });
  }
}

final splashControllerProvider =
StateNotifierProvider<SplashController, bool>(
      (ref) => SplashController(),
);

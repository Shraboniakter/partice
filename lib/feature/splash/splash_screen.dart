import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/util/assetpaths.dart';
import '../../core/route/route.dart';
import 'splash_controller.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(splashControllerProvider.notifier).startTimer(() {
      Navigator.pushReplacementNamed(
        context,
        AppRoutes.onboardingScreen1,
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assetpaths.splash),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

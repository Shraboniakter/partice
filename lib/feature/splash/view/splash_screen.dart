import 'dart:async';
import 'package:flutter/material.dart';
import 'package:partice/core/route/route_name.dart';
import '../../../core/util/assetpaths.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(const Duration(seconds: 2),(){
     Navigator.pushNamed(context,RouteName.onboardingScreen1);
   });
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
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

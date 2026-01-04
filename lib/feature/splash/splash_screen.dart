import 'package:flutter/material.dart';
import 'package:partice/core/util/assetpaths.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(Assetpaths.splash) ,
          fit: BoxFit.fill
          )
        ),
      ),



    );
  }
}

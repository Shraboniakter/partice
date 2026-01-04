import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/global_widgets/CustomDot.dart';
import '../../../../core/route/route.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Onboarding2.png",
              fit: BoxFit.cover,
            ),
          ),

          Column(
            children: [
              const Spacer(flex: 6),

              Expanded(
                flex: 4,
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// DOT INDICATOR
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Dot(),
                          Dot(isActive: true),
                          Dot(),
                        ],
                      ),


                      const SizedBox(height: 25),

                      const Text(
                        "Explore new horizons, one step at a time.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Every trip holds a story waiting to be lived.",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      const Spacer(),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () =>
                              Get.toNamed(AppRoutes.onboardingScreen3),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEDDF99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding:
                            const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

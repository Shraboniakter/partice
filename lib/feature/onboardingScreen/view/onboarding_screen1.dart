import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/global_widgets/CustomDot.dart';
import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/route/route.dart';

class OnboardingScreen1 extends ConsumerWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/Onboarding1.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 6),
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Dot(isActive: true),
                          Dot(),
                          Dot(),
                        ],
                      ),
                      const SizedBox(height: 24),
                      CustomText(text: "Discover the best event near you",size: 30,color: Colors.white,fontWeight: FontWeight.bold,),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {

                            Navigator.pushNamed(
                              context,
                              AppRoutes.onboardingScreen2
                            );

                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffEDDF99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),

                              ),
                              padding: EdgeInsets.symmetric(vertical: 20)
                          ),
                          child:CustomText(text: "Next",
                            size: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

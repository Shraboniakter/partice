import 'package:flutter/material.dart';

import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/route/route_name.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Forgot Password",color: Colors.white,),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            Center(child: Image(image: AssetImage('assets/images/verify.png'),)),
            SizedBox(height: 24,),
            CustomText(text: "Congratulation!",fontWeight: FontWeight.bold,color: Colors.white,size: 30,),
            SizedBox(height: 4,),
            CustomText(text: "Your password successfully updated! ",color: Colors.white,size: 16,),

            SizedBox(height: 24,),

            SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context,
                      RouteName.loginScreen
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEDDF99),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding:
                  const EdgeInsets.symmetric(vertical: 20),
                ),
                child: CustomText(
                  text: "Back to Login",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),




          ],),
      ),

    );
  }
}

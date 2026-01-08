import 'package:flutter/material.dart';

import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/Custom_textfield.dart';
import '../../../../core/route/route_name.dart';

class ForgotPasswordPhoneScreen extends StatelessWidget {
  const ForgotPasswordPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Forgot Password",color: Colors.white,),
        centerTitle: true,

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                CustomText(
                  text: "Enter Your Phone Number",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  size: 30,
                ),

                const SizedBox(height: 4),
                CustomText(
                  text: "Enter your phone number  so we can send the code ",
                  color: Colors.grey.shade50,
                  size: 16,
                ),

                const SizedBox(height: 24),
                CustomText(
                  text: "Phone Number",
                  color: Colors.grey.shade50,
                  size: 14,
                ),

                const SizedBox(height: 4),
                const CustomTextfield(
                  hintText: '+1  234 567 89',
                ),


                SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.phoneVerificationScreen
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
                      text: "Send Code",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Want to choose another way?  ",color: Colors.white,size: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RouteName.forgotPasswordEmailScreen);
                        print("shrabon");
                      },
                      child: CustomText(
                        text: "Use Email",
                        color:Color(0xffEDDF99),size: 20,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

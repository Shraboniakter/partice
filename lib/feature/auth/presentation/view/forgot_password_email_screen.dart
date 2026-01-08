import 'package:flutter/material.dart';
import 'package:partice/core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/Custom_textfield.dart';
import '../../../../core/route/route_name.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  const ForgotPasswordEmailScreen({super.key});

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
                  text: "Enter Your Email",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  size: 30,
                ),

                const SizedBox(height: 4),
                CustomText(
                  text: "Login to your account to explore about our app",
                  color: Colors.grey.shade50,
                  size: 16,
                ),

                const SizedBox(height: 24),
                CustomText(
                  text: "Email Address",
                  color: Colors.grey.shade50,
                  size: 14,
                ),

                const SizedBox(height: 4),
                const CustomTextfield(
                  hintText: 'alexa.mate@example.com',
                ),


                SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteName.emailVerificationScreen,
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
                        Navigator.pushNamed(context,  RouteName.forgotPasswordPhoneScreen);
                        print("shrabon");
                      },
                      child: CustomText(
                        text: "Use Phone Number",
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

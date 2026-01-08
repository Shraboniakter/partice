import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/route/route_name.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Verification",color: Colors.white,
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            Center(child: Image(image: AssetImage('assets/images/verify.png'),)),
            SizedBox(height: 24,),
            CustomText(text: "Please Verify Your Phone\v               Number",fontWeight: FontWeight.bold,color: Colors.white,size: 30,),
            SizedBox(height: 4,),
            CustomText(text: "Enter the 6 digit code we sent by SMS to  ",color: Colors.white,size: 16,),
            SizedBox(height: 4,),
            CustomText(text: "+1234 567 89",color:Color(0xffEDDF99),size: 16,),
            SizedBox(height: 24,),
            OtpTextField(
              cursorColor: Color(0xffEDDF99),
              numberOfFields: 5,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              borderColor: Colors.grey,
              enabledBorderColor: Color(0xffEDDF99),
              focusedBorderColor:Colors.grey ,
              showFieldAsBox: false,
              onCodeChanged: (String code) {

              },

              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 24,),

            SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    RouteName.createANewPasswordScreen,
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
                  text: "Verify",
                  size: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "Didn’t receive the code?  ",color: Colors.white,size: 20,),
                InkWell(
                  onTap: (){
                    print("shrabon");
                  },
                  child: CustomText(
                    text: "Resend Code",
                    color:Color(0xffEDDF99),size: 20,),
                ),
              ],
            ),



          ],),
      ),

    );
  }
}

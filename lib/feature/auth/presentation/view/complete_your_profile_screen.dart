import 'package:flutter/material.dart';
import 'package:partice/core/global_widgets/ProfileAvatar.dart';
import 'package:partice/core/util/assetpaths.dart';

import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/Custom_textfield.dart';
import '../../../../core/route/route_name.dart';

class CompleteYourProfileScreen extends StatelessWidget {
  const CompleteYourProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: Colors.white24, thickness: 1),
                SizedBox(height: 24,),
                Center(
                  child:
                  ProfileAvatar(imagePath: Assetpaths.profile, onEdit:(){
                    print("shrabon");
                  }),

                ),
                SizedBox(height: 16,),
                CustomText(text: "Name",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Alexa Mate',
                ),
                SizedBox(height: 16,),
                CustomText(text: "Email Address",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'alexa.mate@example.com',
                ),
                CustomText(text: "Mobile Number",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: '(808) 555-0111',
                ),
                CustomText(text: "Date of Birth",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: '2nd September, 1985',
                ),
                CustomText(text: "Address",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: '1234 Sample, San Diego,\vCalifornia, USA',
                ),
                CustomText(text: "Gender",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Male',
                ),
                SizedBox(height: 24,),
                Divider(color: Colors.white24, thickness: 1),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context,
                          RouteName.emailVerificationScreen
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
                      text: "Continue",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

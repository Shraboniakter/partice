import 'package:flutter/material.dart';
import 'package:partice/core/global_widgets/Custom_gender_selection.dart';
import 'package:partice/core/global_widgets/Custom_text.dart';
import 'package:partice/core/global_widgets/Custom_textfield.dart';
import 'package:partice/core/util/assetpaths.dart';
import '../../../../core/global_widgets/Custom_country_dropdown.dart';
import '../../../../core/global_widgets/State_&_City_Selector_ Row.dart';
import '../../../../core/route/route.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Image(image: AssetImage(Assetpaths.dimon),),
                SizedBox(height: 16,),
                CustomText(text: "Create Your Account",fontWeight: FontWeight.bold,color: Colors.white,size: 30,),
                SizedBox(height: 4,),
                CustomText(text: "Our Faith Connects",color: Colors.grey.shade50,size: 16,),
                SizedBox(height: 24,),
                CustomText(text: "Name",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Enter your name',
                ),
                SizedBox(height: 16,),
                CustomText(text: "Email Address",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Enter your email',
                ),
                SizedBox(height: 16,),
                CustomText(text: "Phone Number",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Enter your phone number',
                ),
                SizedBox(height: 16,),
                CustomText(text: "Choose Your Gender",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                GenderSelection(),
                SizedBox(height: 16,),
                CustomText(text: "Date of Birth",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CustomTextfield(
                  hintText: 'Select Date of Birth',
                ),
                SizedBox(height: 16,),
                CustomText(text: "Date of Birth",color:Colors.grey.shade50,size: 14,),
                SizedBox(height: 4,),
                CountryDropdown(),
                SizedBox(height: 16,),
                StateCitySelector(),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.pushNamed(
                          context,
                          AppRoutes.select_document_type_screen
                      );

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffEDDF99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),

                        ),
                        padding: EdgeInsets.symmetric(vertical: 20)
                    ),
                    child:CustomText(text: "Verify Your Identity",
                      size: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: "Already have an account? ",color: Colors.white,size: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.loginScreen);
                        print("shrabon");
                      },
                        child: CustomText(
                          text: "Login",
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

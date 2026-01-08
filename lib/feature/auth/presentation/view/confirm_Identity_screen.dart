import 'package:flutter/material.dart';
import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/route/route_name.dart';
class ConfirmIdentityScreen extends StatelessWidget {
  const ConfirmIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Confirm Identity",color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            CustomText(text: 'ID Information',fontWeight: FontWeight.bold,size: 30,color: Colors.white,),
            SizedBox(height: 16,),
            Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Full Name",size: 20,color: Colors.white,),
                  CustomText(text: "Alexa Mate",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],

              ),
              SizedBox(height: 16,),
              Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Date of Birth",size: 20,color: Colors.white,),
                  CustomText(text: "2nd September, 1985",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],

              ),
              SizedBox(height: 16,),
              Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "ID Number",size: 20,color: Colors.white,),
                  CustomText(text: "1234567890123e",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],

              ),
              SizedBox(height: 16,),
              Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Issue Date",size: 20,color: Colors.white,),
                  CustomText(text: "02/01/2023",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],

              ),
              SizedBox(height: 16,),
              Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Gender",size: 20,color: Colors.white,),
                  CustomText(text: "Male",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],

              ),
              SizedBox(height: 16,),
              Divider(color: Colors.white24, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Address",size: 20,color: Colors.white,),
                  CustomText(text: "1234 Sample, San Diego,\nCalifornia, USA",size: 20,color: Colors.white,fontWeight: FontWeight.bold)
                ],
              ),
              Divider(color: Colors.white24, thickness: 1),

              SizedBox(height: 250,),
              Divider(color: Colors.white24, thickness: 1),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                        RouteName.completeYourProfileScreen
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
      )
    );
  }
}

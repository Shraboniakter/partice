import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/Custom_textfield.dart';
import '../../../../core/route/route.dart';
import '../../../../core/util/assetpaths.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final obscurePassProvider = StateProvider<bool>((ref) => true);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscurePass = ref.watch(obscurePassProvider);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(Assetpaths.dimon)),
                const SizedBox(height: 16),

                CustomText(
                  text: "Welcome Back",
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
                  hintText: 'Enter your email',
                ),

                const SizedBox(height: 16),
                CustomText(
                  text: "Password",
                  color: Colors.grey.shade50,
                  size: 14,
                ),

                const SizedBox(height: 4),

                /// 🔐 PASSWORD FIELD
                CustomTextfield(
                  obscureText: obscurePass,
                  hintText: 'Enter your password',
                  suffix: IconButton(
                    onPressed: () {
                      ref
                          .read(obscurePassProvider.notifier)
                          .state = !obscurePass;
                    },
                    icon: Icon(
                      obscurePass
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(height: 4),


                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.forgotPasswordEmailScreen);

                      },

                        child: CustomText(text: "Forgot Password",color: Colors.white,size: 16,fontWeight: FontWeight.w500,)),
                  ],
                ),
                SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.onboardingScreen2,
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
                      text: "Login",
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
                    CustomText(text: "Don’t have an account?  ",color: Colors.white,size: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.createAccountScreen);
                        print("shrabon");
                      },
                      child: CustomText(
                        text: "Register",
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
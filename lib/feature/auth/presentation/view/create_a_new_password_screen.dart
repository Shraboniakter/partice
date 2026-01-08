import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/global_widgets/Custom_text.dart';
import '../../../../core/global_widgets/Custom_textfield.dart';
import '../../../../core/route/route_name.dart';

class CreateANewPasswordScreen extends ConsumerWidget {
   CreateANewPasswordScreen({super.key});
   final passwordObscureProvider = StateProvider<bool>((ref) => true);
   final confirmPasswordObscureProvider = StateProvider<bool>((ref) => true);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final passwordObscure = ref.watch(passwordObscureProvider);
    final confirmPasswordObscure = ref.watch(confirmPasswordObscureProvider);

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
                  text: "Create a New Password",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  size: 30,
                ),

                const SizedBox(height: 4),
                CustomText(
                  text: "Enter your new password",
                  color: Colors.grey.shade50,
                  size: 16,
                ),

                const SizedBox(height: 24),
                CustomText(
                  text: "Password",
                  color: Colors.grey.shade50,
                  size: 14,
                ),

                const SizedBox(height: 4),
                CustomTextfield(
                  obscureText: passwordObscure,
                  hintText: 'Enter your password',
                  suffix: IconButton(
                    onPressed: () {
                      ref.read(passwordObscureProvider.notifier).state =
                      !passwordObscure;
                    },
                    icon: Icon(
                      passwordObscure
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                CustomText(
                  text: "Confirmation New Password",
                  color: Colors.grey.shade50,
                  size: 14,
                ),

                const SizedBox(height: 4),



                CustomTextfield(
                  obscureText: confirmPasswordObscure,
                  hintText: 'Confirm your new password',
                  suffix: IconButton(
                    onPressed: () {
                      ref
                          .read(confirmPasswordObscureProvider.notifier)
                          .state = !confirmPasswordObscure;
                    },
                    icon: Icon(
                      confirmPasswordObscure
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
                SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context,
                          RouteName.congratulationScreen
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
                      text: "Submit",
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

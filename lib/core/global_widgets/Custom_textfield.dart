import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String?  hintStyle;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final int? min;
  final int? max;

  final bool? colorTrue;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final bool? enable;
  final Icon? icon;

  const CustomTextfield({super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText,
    this.textInputAction,
    this.onChanged,
    this.min,
    this.max,
    this.colorTrue,
    this.suffix,
    this.validator,
    this.enable,
    this.icon, this.hintStyle


  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      maxLines: obscureText == true ? 1 : max,

      obscureText: obscureText ?? false,

      decoration: InputDecoration(
        hintStyle:GoogleFonts.agdasima(
          fontSize: 16.sp,
        ) ,
        hintText: hintText,
        prefixIcon: icon,
        filled: true,
        fillColor: Colors.black,
        suffixIcon: suffix ?? icon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: Color(0xff3A3B3F),
            ),
        ),
        enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
                color: Color(0xff3A3B3F),
            )
        ),
        focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
                color: Color(0xffEDDF99),
            )
        ),


      ),
    );
  }
}
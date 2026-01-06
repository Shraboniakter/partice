import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends ConsumerWidget {

  final String text;
  final Color ? color;
  final double? size;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;


  CustomText ({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.textAlign,
    this.fontWeight});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Text(
      text,
      style: GoogleFonts.agdasima(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),

    );
  }
}

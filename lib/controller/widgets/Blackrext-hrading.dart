import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';
import 'package:google_fonts/google_fonts.dart';
class BlackTextHeading extends StatelessWidget {
  String text;
  BlackTextHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
      color: AppColors.blackColor,
      fontSize: 26,
      fontWeight: FontWeight.w600,
    ),);
  }
}


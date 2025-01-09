import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondTextWidget extends StatelessWidget {
  String text;
  Color textColor;
  SecondTextWidget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w400,color:textColor),);
  }
}

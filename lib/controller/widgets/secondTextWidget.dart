import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondTextWidget extends StatelessWidget {
  String text;
  Color textColor;
  SecondTextWidget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Text(text, style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w300,color:textColor),));
  }
}

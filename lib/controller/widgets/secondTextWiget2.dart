import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondText_Widget extends StatelessWidget {
  String text;
  Color textColor;
  SecondText_Widget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.w400,color:textColor),);
  }
}

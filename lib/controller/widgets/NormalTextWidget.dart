import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalTextWidget extends StatelessWidget {
  String text;
  Color textColor;
  NormalTextWidget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Text(text, style: GoogleFonts.poppins(fontSize: 23,fontWeight: FontWeight.w600,color:textColor),));
  }
}

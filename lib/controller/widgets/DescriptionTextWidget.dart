import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionTextWidget extends StatelessWidget {
  String text;
  Color textColor;
  DescriptionTextWidget({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Padding(
      padding: const EdgeInsets.only(left: 2.0,right: 2.0),
      child: Text(text, style: GoogleFonts.poppins(fontSize: 27,fontWeight: FontWeight.w600,color:textColor),),
    ));
  }
}

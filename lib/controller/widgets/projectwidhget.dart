import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';

class ProjectWidget extends StatelessWidget {
  String Image;
   ProjectWidget({super.key, required this.Image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.67),
        color:AppColors.bacckgroundColor,
        image: DecorationImage(
          image: AssetImage(Image,),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

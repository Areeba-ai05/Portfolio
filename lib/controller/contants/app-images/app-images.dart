import 'package:flutter/material.dart';
import 'package:portfoliowebsite/controller/contants/app-colors/app-colors.dart';

class AppImages extends StatelessWidget {
  const AppImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,top: 50),
      child: Container(
        height:80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.67),
          color:AppColors.bacckgroundColor,
          image: DecorationImage(
            image: AssetImage('assets/App-images/logoui4.png',),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

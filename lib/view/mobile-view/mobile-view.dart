import 'package:flutter/material.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(height: double.infinity, width:  double.infinity, color: Colors.blueGrey,
          child: Center(
            child: Text('Mobile',style:TextStyle(fontSize: 30,
              fontWeight: FontWeight.w700,color: Colors.black,),),
          ),)
    );
  }
}

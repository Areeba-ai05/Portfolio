import 'package:flutter/material.dart';

class HomeViewTablet extends StatefulWidget {
  const HomeViewTablet({super.key});

  @override
  State<HomeViewTablet> createState() => _HomeViewTabletState();
}

class _HomeViewTabletState extends State<HomeViewTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(height: double.infinity, width:  double.infinity, color: Colors.brown,
            child: Center(
              child: Text('Tablet',style:TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w700,color: Colors.black),),
            )),

    );
  }
}

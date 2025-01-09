import 'package:flutter/material.dart';
import 'package:portfoliowebsite/view/Responsive-layout.dart';
import 'package:portfoliowebsite/view/desktop-view/desktop-view.dart';
import 'package:portfoliowebsite/view/mobile-view/mobile-view.dart';
import 'package:portfoliowebsite/view/tablet-view/tablet-view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResposiveLayout(
      desktop:DesktopView(),
      mobile:HomeViewMobile(),
      tablet:HomeViewTablet(),
    );
  }
}

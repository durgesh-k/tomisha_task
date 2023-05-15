import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tomisha_task/screens/desktopView.dart';
import 'package:tomisha_task/screens/mobileView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileView(),
      desktop: (BuildContext context) => DesktopView(),
      tablet: (BuildContext context) => DesktopView(),
    );
  }
}

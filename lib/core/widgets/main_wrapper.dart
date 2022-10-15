import 'package:be_senior/core/widgets/app_background.dart';
import 'package:be_senior/core/widgets/bottom_nav.dart';
import 'package:be_senior/features/feature_bookmark/presentation/screens/bookmark_screen.dart';
import 'package:be_senior/features/feature_weather/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});
  final PageController pageController = PageController(initialPage: 0);
  final List<Widget> pageViewWidget = [
    const HomeScreen(),
    const BookMarkScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNav(Controller: pageController),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AppBackground.getBackGroundImage(), fit: BoxFit.cover)),
        child: PageView(
          controller: pageController,
          children: pageViewWidget,
        ),
      ),
    );
  }
}

import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/presentation/auth/pages/signin_page.dart';
import 'package:flight_booking_app/presentation/intro/widgets/page_maker.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_responsive.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          page(AppResponsive.screenHeight, AppResponsive.screenWidth, _pageController, ImgPaths.introPerson1,
              "Explore \nThe Beautiful \nWorld!", "Next", () {
            _pageController.nextPage(
              duration: Duration(milliseconds: 450),
              curve: Curves.easeIn,
            );
          }, 1),
          page(AppResponsive.screenHeight, AppResponsive.screenWidth, _pageController, ImgPaths.introPerson2,
              "Find \nYour Perfect \nTickets To Fly", "Next", () {
            _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }, 2),
          page(AppResponsive.screenHeight, AppResponsive.screenWidth, _pageController, ImgPaths.introPerson3,
              "Book \nAppointment \nin Easiest Way!", "Get Started", () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()));
          }, 3),
        ],
      ),
    );
  }
}






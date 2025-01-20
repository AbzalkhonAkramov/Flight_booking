import 'package:flight_booking_app/presentation/home/pages/home_page.dart';
import 'package:flight_booking_app/presentation/home/pages/transaction_page.dart';
import 'package:flutter/material.dart';

import '../core/common/constants/app_colors.dart';
import '../core/common/constants/icons_paths.dart';
import '../core/utils/app_responsive.dart';
import 'home/pages/account_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    TransactionPage(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.grey.withValues(
          alpha: 0.7,
        ),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: AppResponsive.screenHeight * 0.015,
        unselectedFontSize: AppResponsive.screenHeight * 0.015,
        selectedLabelStyle: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: TextStyle(
          height: AppResponsive.screenHeight * 0.0027,
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              IconsPaths.home,
              size: AppResponsive.screenHeight * 0.03,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconsPaths.transaction,
              size: AppResponsive.screenHeight * 0.03,
            ),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconsPaths.person,
              size: AppResponsive.screenHeight * 0.03,
            ),
            label: "Account",
          )
        ],
      ),
    );
  }
}

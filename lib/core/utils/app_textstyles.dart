import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  // 40 size
  static TextStyle bigTextBigger({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.05),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 24 size
  static TextStyle bigTextSmaller({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.03),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 20 size
  static TextStyle titleBigger({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.024),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 16 size
  static TextStyle titleSmaller({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.02),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 14 size
  static TextStyle bodyBigger({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.018),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 12 size
  static TextStyle bodySmallerMedium({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.015),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
      );

  // 12 size
  static TextStyle bodySmallerRegular({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.015),
        color: color,
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
      );

  // 10 size
  static TextStyle overline({required Color color}) => TextStyle(
        fontSize: AppResponsive.height(0.012),
        color: color,
        fontFamily: "Inter",
        // height: AppResponsive.height(0.018),
      );
}

import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  const PaymentSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.064),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppResponsive.height(0.02),
            children: [
              SizedBox(
                width: AppResponsive.width(0.57),
                height: AppResponsive.height(0.21),
                child: Image.asset(
                  ImgPaths.orderConfirmation,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                AuthStrings.orderConfirmed,
                style: AppTextStyles.bigTextSmaller(color: AppColors.white),
              ),
              Text(
                AuthStrings.confirmationMessage,
                textAlign: TextAlign.center,
                style: AppTextStyles.titleSmaller(color: AppColors.white),
              ),
              Button(
                onPressed: () {
                  Navigator.pushNamed(
                      context, RouteNames.transactionDetailsPage);
                },
                childWg: Text(
                  AuthStrings.seeDetails,
                  style: AppTextStyles.titleSmaller(color: AppColors.black),
                ),
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.032),
          vertical: AppResponsive.height(0.019),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppResponsive.height(0.019),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transaction",
                style: AppTextStyles.bigTextSmaller(color: AppColors.black),
              ),
            ),
            Image.asset(ImgPaths.transactionImg),
            SizedBox(height: AppResponsive.height(0.1)),
            Text(
              "Let's go somewhere",
              style: AppTextStyles.titleBigger(color: AppColors.black),
            ),
            Text(
              "After book a trip you can manage orders and see E-ticket here.",
              textAlign: TextAlign.center,
              style: AppTextStyles.titleSmaller(color: AppColors.grey),
            ),
            Button(
                onPressed: () {},
                childWg: Text(
                  "Book a trip",
                  style: AppTextStyles.titleSmaller(color: AppColors.white),
                ),
                color: AppColors.blue),
          ],
        ),
      ),
    );
  }
}

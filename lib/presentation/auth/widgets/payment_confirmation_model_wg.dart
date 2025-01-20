import 'package:flutter/material.dart';
import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';

class PaymentConfirmationModal extends StatelessWidget {
  final VoidCallback onPressed;
  final String imgPath;
  final String title;

  const PaymentConfirmationModal(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.042),
        vertical: AppResponsive.height(0.039),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bigTextSmaller(color: AppColors.black),
          ),
          SizedBox(
            height: AppResponsive.height(0.15),
            width: AppResponsive.width(0.33),
            child: Image.asset(imgPath, fit: BoxFit.contain),
          ),
          Button(
            onPressed: onPressed,
            childWg: Text(
              AuthStrings.usePasscodeInstead,
              style: AppTextStyles.titleSmaller(color: AppColors.black),
            ),
            color: AppColors.lightGrey,
          ),
        ],
      ),
    );
  }
}

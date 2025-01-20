import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthCheckButtonWg extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AuthCheckButtonWg(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.06),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Adjust the value as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              text,
              style: AppTextStyles.bodyBigger(color: AppColors.white),
            ),
            Icon(
              Icons.check_circle,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}

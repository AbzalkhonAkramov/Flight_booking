import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/auth/widgets/passcode_input_container_wg.dart';
import 'package:flutter/material.dart';

class PasscodePage extends StatelessWidget {
  const PasscodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.042),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppResponsive.height(0.019),
          children: [
            SizedBox(height: AppResponsive.height(0.06)),
            Text(
              AuthStrings.passcode,
              style: AppTextStyles.bigTextBigger(color: AppColors.black),
            ),
            Text(
              AuthStrings.enterPasscode,
              style: AppTextStyles.bodyBigger(color: AppColors.grey),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                AuthStrings.forgotPasscode,
                style: AppTextStyles.bodyBigger(color: AppColors.blue),
              ),
            ),
            PasscodeInputContainerWg(),
            Button(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.paymentSuccessfulPage);
              },
              childWg: Text(
                AuthStrings.enter,
                style: AppTextStyles.titleSmaller(color: AppColors.white),
              ),
              color: AppColors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

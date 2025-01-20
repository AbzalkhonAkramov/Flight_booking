import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flight_booking_app/presentation/settings/widgets/text_icon_row_wg.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/strings/settings_strings.dart';

class SettingsEmailAndNumberPage extends StatelessWidget {
  const SettingsEmailAndNumberPage({super.key});

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
          spacing: AppResponsive.height(0.02),
          children: [
            Text(SettingsStrings.emailAndMobile,
                style: customTxtStyle(fontSize: 0.03)),
            // verification
            Row(
              spacing: AppResponsive.width(0.032),
              children: [
                Icon(
                  Icons.verified,
                  size: AppResponsive.width(0.06),
                  color: AppColors.grey,
                ),
                Text(
                  SettingsStrings.unverified,
                  style: AppTextStyles.titleSmaller(color: AppColors.red),
                ),
              ],
            ),
            TextIconRowWg(
                text: "+423496458", onPressed: () {}, icon: Icons.edit),
            Button(
                onPressed: () {},
                childWg: Text(
                  AuthStrings.enter,
                  style: AppTextStyles.titleSmaller(color: AppColors.white),
                ),
                color: AppColors.blue),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    SettingsStrings.email,
                    style: customTxtStyle(fontSize: 0.02),
                  ),
                  Text(
                    SettingsStrings.emailDescription,
                    style: AppTextStyles.bodyBigger(color: AppColors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

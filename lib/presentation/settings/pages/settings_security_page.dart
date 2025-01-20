import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flight_booking_app/presentation/settings/widgets/biometric_wg.dart';
import 'package:flight_booking_app/presentation/settings/widgets/credit_card_wg.dart';
import 'package:flight_booking_app/presentation/settings/widgets/security_device_wg.dart';
import 'package:flight_booking_app/presentation/settings/widgets/security_pin_wg.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/strings/settings_strings.dart';

class SettingsSecurityPage extends StatelessWidget {
  const SettingsSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppResponsive.height(0.019),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsive.width(0.042),
                vertical: AppResponsive.height(0.005),
              ),
              child: Text(SettingsStrings.securitySettings,
                  style: customTxtStyle(fontSize: 0.03)),
            ),
            // Credit Card
            CreditCardWg(),
            //Biometric
            BiometricWg(),
            // Device
            SecurityDeviceWg(),
            // Pin
            SecurityPinWg(),
          ],
        ),
      ),
    );
  }
}

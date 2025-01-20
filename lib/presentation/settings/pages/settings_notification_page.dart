import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flight_booking_app/presentation/settings/widgets/toggle_setting_tile_wg.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/strings/settings_strings.dart';

class SettingsNotificationPage extends StatelessWidget {
  const SettingsNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.width(0.042),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppResponsive.height(0.03),
            children: [
              Text(SettingsStrings.notificationSettings,
                  style: customTxtStyle(fontSize: 0.03)),
              // Push Notifications disabled
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppResponsive.height(0.014),
                  children: [
                    Text(
                      SettingsStrings.pushNotificationDisabled,
                      style: customTxtStyle(fontSize: 0.02),
                    ),
                    Text(
                      SettingsStrings.enableNotificationsInfo,
                      style: AppTextStyles.bodyBigger(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              // Activity
              ToggleSettingTileWg(
                title: SettingsStrings.activity,
                description: SettingsStrings.activityDescription,
                onPressedFirst: () {},
                onPressedSecond: () {},
              ),
              // Special for you
              ToggleSettingTileWg(
                title: SettingsStrings.specialForYou,
                description: SettingsStrings.specialForYouDescription,
                onPressedFirst: () {},
                onPressedSecond: () {},
              ),
              // Remainders
              ToggleSettingTileWg(
                  title: SettingsStrings.reminders,
                  description: SettingsStrings.remindersDescription,
                  onPressedFirst: (){},
                  onPressedSecond:(){}),
              // Membership
              ToggleSettingTileWg(
                  title: SettingsStrings.membership,
                  description: SettingsStrings.membershipDescription,
                  onPressedFirst: (){},
                  onPressedSecond:(){}),
            ],
          ),
        ),
      ),
    );
  }
}

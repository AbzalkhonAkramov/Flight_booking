import 'package:flight_booking_app/presentation/settings/widgets/text_icon_row_wg.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/strings/settings_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';
import '../pages/settings_page.dart';

class BiometricWg extends StatelessWidget {
  const BiometricWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.042),
        vertical: AppResponsive.height(0.03),
      ),
      color: AppColors.white,
      width: double.infinity,
      height: AppResponsive.height(0.22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppResponsive.height(0.019),
        children: [
          Text(
            SettingsStrings.biometricOption,
            style: customTxtStyle(fontSize: 0.02),
          ),
          SizedBox(
            child: Column(
              children: [
                TextIconRowWg(
                    text: SettingsStrings.activateBiometricFeature,
                    onPressed: () {},
                    icon: Icons.toggle_on_rounded),
                Text(
                  SettingsStrings.biometricOptionDescription,
                  style: AppTextStyles.bodyBigger(color: AppColors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

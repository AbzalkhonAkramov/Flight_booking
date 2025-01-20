import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/strings/settings_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';
import '../pages/settings_page.dart';

class CreditCardWg extends StatelessWidget {
  const CreditCardWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.width(0.042),
        vertical: AppResponsive.height(0.03),
      ),
      color: AppColors.white,
      width: double.infinity,
      height: AppResponsive.height(0.35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppResponsive.height(0.019),
        children: [
          Text(
            SettingsStrings.creditCardOption,
            style: customTxtStyle(fontSize: 0.02),
          ),
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      SettingsStrings.doubleVerification,
                      style: AppTextStyles.titleSmaller(
                          color: AppColors.black),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.radio_button_checked_sharp)),
                  ],
                ),
                Text(
                  SettingsStrings.doubleVerificationDescription,
                  style: AppTextStyles.bodyBigger(color: AppColors.grey),
                ),
              ],
            ),
          ),
          divider,
          SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      SettingsStrings.singleVerification,
                      style: AppTextStyles.titleSmaller(
                          color: AppColors.black),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.radio_button_off)),
                  ],
                ),
                Text(
                  SettingsStrings.singleVerificationDescription,
                  style: AppTextStyles.bodyBigger(color: AppColors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

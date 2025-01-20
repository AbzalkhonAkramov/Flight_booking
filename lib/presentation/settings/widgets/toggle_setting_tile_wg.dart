import 'package:flight_booking_app/presentation/settings/widgets/text_icon_row_wg.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/strings/settings_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';
import '../pages/settings_page.dart';

class ToggleSettingTileWg extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onPressedFirst;
  final VoidCallback onPressedSecond;

  const ToggleSettingTileWg({
    super.key,
    required this.title,
    required this.description,
    required this.onPressedFirst,
    required this.onPressedSecond,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: customTxtStyle(fontSize: 0.02),
          ),
          SizedBox(
            height: AppResponsive.height(0.007),
          ),
          Text(
            description,
            style: AppTextStyles.bodyBigger(color: AppColors.grey),
          ),
          SizedBox(
            height: AppResponsive.height(0.02),
          ),
          TextIconRowWg(
              text: SettingsStrings.email,
              onPressed: onPressedFirst,
              icon: Icons.toggle_off_outlined),
          SizedBox(
            height: AppResponsive.height(0.01),
          ),
          divider,
          SizedBox(
            height: AppResponsive.height(0.01),
          ),
          TextIconRowWg(
              text: SettingsStrings.pushNotification,
              onPressed: onPressedSecond,
              icon: Icons.toggle_on_rounded),
        ],
      ),
    );
  }
}

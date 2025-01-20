import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/strings/settings_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../widgets/settings_container_wg.dart';
import '../widgets/text_icon_row_wg.dart';

class SettingsLanguagePage extends StatelessWidget {
  const SettingsLanguagePage({super.key});

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
          spacing: AppResponsive.height(0.01),
          children: [
            Text(SettingsStrings.language,
                style: customTxtStyle(fontSize: 0.03)),
            // General
            SettingsContainerWg(
              heading: Text(
                SettingsStrings.language,
                style: customTxtStyle(fontSize: 0.02),
              ),
              texts: [
                TextIconRowWg(
                  text: SettingsStrings.english,
                  icon: Icons.radio_button_checked,
                  onPressed: () {},
                ),
                divider,
                TextIconRowWg(
                  text: SettingsStrings.vietnamese,
                  icon: Icons.radio_button_off,
                  onPressed: () {},
                ),
                divider,
                TextIconRowWg(
                  text: SettingsStrings.french,
                  icon: Icons.radio_button_off,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/strings/auth_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';

class TransDetailsRefundButtonWg extends StatelessWidget {
  const TransDetailsRefundButtonWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppResponsive.height(0.06),
      child: MaterialButton(
        onPressed: () {},
        color: AppColors.red[10],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Adjust the value as needed
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              AuthStrings.refundOrReschedule,
              style: AppTextStyles.bodyBigger(color: AppColors.red),
            ),
            Icon(
              Icons.arrow_circle_right,
              color: AppColors.red,
            ),
          ],
        ),
      ),
    );
  }
}

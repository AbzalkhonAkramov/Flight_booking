import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/common/constants/app_colors.dart';

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("  • ", style: AppTextStyles.bodyBigger(color: AppColors.black)),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.bodyBigger(color: AppColors.black),
          ),
        ),
      ],
    );
  }
}

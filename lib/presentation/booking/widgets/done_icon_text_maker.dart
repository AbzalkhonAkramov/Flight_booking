import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

Row doneIconWithTextMaker(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          IconsPaths.done,
          color: AppColors.green,
          size: AppResponsive.height(0.025),
        ),
        SizedBox(
          width: AppResponsive.width(0.015),
        ),
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.bodyBigger(
              color: AppColors.grey.withValues(alpha: 0.7),
            ).copyWith(
              fontSize: AppResponsive.height(0.016),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';

class TextIconRowWg extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const TextIconRowWg({
    super.key,
    required this.text,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppTextStyles.bodyBigger(color: AppColors.black),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
          iconSize: AppResponsive.width(0.08),
        ),
      ],
    );
  }
}

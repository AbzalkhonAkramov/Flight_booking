import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/img_paths.dart';
import '../../../core/common/constants/strings/auth_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';

class TransDetailsCardWg extends StatelessWidget {
  const TransDetailsCardWg({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 6,
      child: Container(
        width: double.infinity,
        height: AppResponsive.height(0.25),
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.042),
          // vertical: AppResponsive.height(0.023),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: AppResponsive.height(0.012),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: AppResponsive.width(0.021),
                  children: [
                    Image.asset(ImgPaths.airlineLogo),
                    Text(
                      AuthStrings.southwestAirlines,
                      style: AppTextStyles.bodyBigger(color: AppColors.black),
                    )
                  ],
                ),
                Text(
                  AuthStrings.executive,
                  style:
                      AppTextStyles.bodySmallerRegular(color: AppColors.grey),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "GTH",
                      style:
                          AppTextStyles.bigTextSmaller(color: AppColors.black),
                    ),
                    Text(
                      "14.00",
                      style: AppTextStyles.bodySmallerRegular(
                          color: AppColors.grey),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey, width: 1),
                    borderRadius: BorderRadius.all(const Radius.circular(32)),
                  ),
                  width: AppResponsive.width(0.18),
                  height: AppResponsive.height(0.044),
                  child: Image.asset(
                    ImgPaths.smallPlane,
                    width: 20,
                    height: 20,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "KHQ",
                      style:
                          AppTextStyles.bigTextSmaller(color: AppColors.black),
                    ),
                    Text(
                      "07.15",
                      style: AppTextStyles.bodySmallerRegular(
                          color: AppColors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: AppResponsive.width(0.01),
                  children: [
                    Icon(
                      Icons.person,
                      color: AppColors.blue,
                      size: AppResponsive.width(0.03),
                    ),
                    Text(
                      "2 Person",
                      style: AppTextStyles.bodySmallerMedium(
                          color: AppColors.black),
                    ),
                    Icon(
                      Icons.bolt,
                      color: AppColors.blue,
                      size: AppResponsive.width(0.03),
                    ),
                    Text(
                      "Premium",
                      style: AppTextStyles.bodySmallerMedium(
                          color: AppColors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "IDR 350.000",
                      style: AppTextStyles.bodySmallerMedium(
                          color: AppColors.black),
                    ),
                    Text(
                      "/Pax",
                      style: AppTextStyles.bodySmallerMedium(
                          color: AppColors.grey),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: AppResponsive.width(0.02),
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: AppColors.grey,
                      size: AppResponsive.width(0.05),
                    ),
                    Text(
                      "Iftikhor Rustamov",
                      style: AppTextStyles.bodyBigger(color: AppColors.black),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AuthStrings.edit,
                    style:
                        AppTextStyles.bodySmallerRegular(color: AppColors.blue),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

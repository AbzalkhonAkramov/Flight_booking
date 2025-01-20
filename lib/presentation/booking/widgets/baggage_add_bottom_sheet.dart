 import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/booking/widgets/baggage_massa_card.dart';
import 'package:flutter/material.dart';

Future<dynamic> showBaggageAddBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      scrollControlDisabledMaxHeightRatio: 1 / 1.87,
      backgroundColor: AppColors.white,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.033),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: AppResponsive.height(0.03),
                  ),
                  height: 2.9,
                  width: AppResponsive.width(0.17),
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ],
            ),
            Text(
              "Add Baggage",
              style: AppTextStyles.bigTextSmaller(
                color: AppColors.black,
              ).copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: AppResponsive.height(0.027),
            ),
            Text(
              "1. Matt Murdock",
              style: AppTextStyles.bodyBigger(
                color: AppColors.black,
              ).copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: AppResponsive.height(0.01),
            ),
            Row(
              spacing: AppResponsive.width(0.021),
              children: [
                baggageMassaCard(
                    Colors.transparent, AppColors.lightGrey, "0Kg", "free"),
                baggageMassaCard(
                    AppColors.blue, AppColors.lightGrey, "5 Kg", "Rp 210.000"),
                baggageMassaCard(Colors.transparent, AppColors.lightGrey,
                    "10 Kg", "Rp 510.000"),
              ],
            ),
            SizedBox(
              height: AppResponsive.height(0.017),
            ),
            Container(
              height: AppResponsive.height(0.11),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: AppResponsive.width(0.035),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(
                  AppResponsive.width(0.03),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: AppResponsive.height(0.013),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1. Matt Murdock",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.grey,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Rp. 210.000",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.grey,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.grey,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Rp. 210.000",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.black,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppResponsive.height(0.05),
            ),
            Container(
              height: AppResponsive.height(0.07),
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(
                  AppResponsive.width(0.03),
                ),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: AppResponsive.width(0.01),
                  children: [
                    Icon(
                      Icons.add_circle_rounded,
                      color: Colors.white,
                      size: AppResponsive.width(0.07),
                    ),
                    Text(
                      "Add Baggage",
                      style: AppTextStyles.titleSmaller(
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: AppResponsive.height(0.013),
            ),
          ],
        ),
      ),
    );
  }
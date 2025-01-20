import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/common/widgets/button.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/auth/widgets/trans_details_card_wg.dart';
import 'package:flight_booking_app/presentation/auth/widgets/trans_details_refund_button_wg.dart';
import 'package:flutter/material.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
          padding: EdgeInsets.only(
            left: AppResponsive.width(0.042),
            right: AppResponsive.width(0.042),
            bottom: AppResponsive.height(0.039),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: AppResponsive.height(0.019),
                children: [
                  Text(
                    AuthStrings.transactionDetails,
                    style: AppTextStyles.bigTextSmaller(color: AppColors.black),
                  ),
                  TransDetailsCardWg(),
                  _myRow(
                      textL: "Status", textR: "Status", colorR: AppColors.blue),
                  _myRow(
                      textL: AuthStrings.invoice,
                      textR: "INV434623623",
                      colorR: AppColors.black),
                  _myRow(
                      textL: AuthStrings.transactionDate,
                      textR: "Wed, 18 Oct 2022",
                      colorR: AppColors.black),
                  _myRow(
                      textL: AuthStrings.paymentMethod,
                      textR: "Paytren",
                      colorR: AppColors.black),
                  Container(
                    width: double.infinity,
                    height: AppResponsive.height(0.097),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppResponsive.width(0.042),
                      vertical: AppResponsive.height(0.017),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.lightGrey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      spacing: AppResponsive.height(0.017),
                      children: [
                        _myRow(
                            textL: "Iftikhor Rustamov",
                            textR: "Rp. 210.000",
                            colorR: AppColors.grey),
                        _myRow(
                            textL: "Total",
                            textR: "Rp. 210.000",
                            colorR: AppColors.black),
                      ],
                    ),
                  ),
                  TransDetailsRefundButtonWg(),
                ],
              ),
              Button(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteNames.mainPage,
                      (route) => route.settings.name == RouteNames.mainPage);
                },
                childWg: Text(
                  AuthStrings.enter,
                  style: AppTextStyles.titleSmaller(color: AppColors.white),
                ),
                color: AppColors.blue,
              ),
            ],
          )),
    );
  }
}

Widget _myRow(
        {required String textL,
        required String textR,
        required Color colorR}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textL,
          style: AppTextStyles.bodySmallerMedium(color: AppColors.grey),
        ),
        Text(
          textR,
          style: AppTextStyles.bodySmallerMedium(color: colorR),
        ),
      ],
    );

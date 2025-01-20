import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/common/widgets/app_bar.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/auth/widgets/auth_check_button_wg.dart';
import 'package:flight_booking_app/presentation/auth/widgets/payment_confirmation_model_wg.dart';
import 'package:flutter/material.dart';

class PaymentDetailsPage extends StatelessWidget {
  const PaymentDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.all(AppResponsive.height(0.019)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppResponsive.height(0.024),
              children: [
                Text(
                  AuthStrings.digitalPaymentMethods,
                  style: AppTextStyles.titleBigger(color: AppColors.black),
                ),
                Text(
                  AuthStrings.swipeToSetDefault,
                  style: AppTextStyles.bodyBigger(color: AppColors.grey),
                ),
                _cardSelection(text: "****8976", image: ImgPaths.mastercard),
                Divider(height: 1, color: AppColors.white1),
                _cardSelection(
                    text: AuthStrings.paypal, image: ImgPaths.paypal),
                Text(
                  AuthStrings.addMethods,
                  style: AppTextStyles.titleBigger(color: AppColors.black),
                ),
                _addMethods(
                    title: AuthStrings.creditOrDebitCard,
                    subtitle: AuthStrings.visaMastercardText,
                    icon: Icons.credit_card),
                Divider(height: 1, color: AppColors.white1),
                _addMethods(
                    title: AuthStrings.transfer,
                    subtitle: AuthStrings.transferDetails,
                    icon: Icons.currency_exchange),
              ],
            ),
            Row(
              spacing: AppResponsive.width(0.0189),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          AuthStrings.subtotal,
                          style: AppTextStyles.bodySmallerRegular(
                              color: AppColors.grey),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: AppColors.blue,
                          size: AppResponsive.width(0.053),
                        )
                      ],
                    ),
                    Text(
                      "132\$",
                      style:
                          AppTextStyles.bigTextSmaller(color: AppColors.black),
                    ),
                  ],
                ),
                Expanded(
                  child: AuthCheckButtonWg(
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: AppColors.white,
                        scrollControlDisabledMaxHeightRatio: 1 / 2.1,
                        context: context,
                        builder: (context) => PaymentConfirmationModal(
                            title: AuthStrings.continueWithTouchID,
                            onPressed: () {
                              showModalBottomSheet(
                                backgroundColor: AppColors.white,
                                scrollControlDisabledMaxHeightRatio: 1 / 2.1,
                                context: context,
                                builder: (context) => PaymentConfirmationModal(
                                    title: AuthStrings.continueWithTouchID,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, RouteNames.passcodePage);
                                    },
                                    imgPath: ImgPaths.faceId),
                              );
                            },
                            imgPath: ImgPaths.touchId),
                      );
                    },
                    text: AuthStrings.proceedPayment,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _discount() => Row(
        spacing: AppResponsive.width(0.021),
        children: [
          Icon(
            Icons.verified,
            color: AppColors.gold,
            size: AppResponsive.height(0.017),
          ),
          Text(
            AuthStrings.getDiscount,
            style: AppTextStyles.bodySmallerMedium(color: AppColors.grey),
          ),
        ],
      );

  Widget _cardSelection({required String text, required String image}) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppResponsive.height(0.018),
            children: [
              Image.asset(
                image,
                height: AppResponsive.height(0.027),
                width: AppResponsive.width(0.085),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppResponsive.width(0.021),
                children: [
                  Text(
                    text,
                    style: AppTextStyles.titleSmaller(color: AppColors.black),
                  ),
                  _discount(),
                ],
              ),
            ],
          ),
          Radio(
              value: "Master Card",
              groupValue: "Payment",
              onChanged: (value) {}),
        ],
      );

  Widget _addMethods(
          {required String title,
          required String subtitle,
          required IconData icon}) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppResponsive.height(0.018),
            children: [
              Icon(
                icon,
                color: AppColors.blue,
                size: AppResponsive.height(0.035),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppResponsive.width(0.010),
                children: [
                  Text(
                    title,
                    style: AppTextStyles.titleSmaller(color: AppColors.black),
                  ),
                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.bodyBigger(
                        color: AppColors.black.withAlpha(170)),
                  ),
                  _discount(),
                ],
              ),
            ],
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                AuthStrings.add,
                style: AppTextStyles.titleSmaller(color: AppColors.blue),
              ))
        ],
      );
}

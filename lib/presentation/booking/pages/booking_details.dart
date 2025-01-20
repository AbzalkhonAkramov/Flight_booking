import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/booking/pages/passengers_info_screen.dart';
import 'package:flight_booking_app/presentation/booking/widgets/baggage_add_bottom_sheet.dart';
import 'package:flight_booking_app/presentation/booking/widgets/box_of_text_and_icon_maker.dart';
import 'package:flight_booking_app/presentation/booking/widgets/done_icon_text_maker.dart';
import 'package:flutter/material.dart';

import 'contact_details.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  bool switchOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppResponsive.screenWidth * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppResponsive.screenHeight * 0.06,
              ),
              // Top Text and Back Icon Part
              Transform.translate(
                offset: Offset(
                  -AppResponsive.screenWidth * 0.03,
                  0,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    IconsPaths.back,
                    size: AppResponsive.screenHeight * 0.031,
                    color: AppColors.black,
                  ),
                ),
              ),
              SizedBox(
                height: AppResponsive.screenHeight * 0.02,
              ),
              Text(
                "Search Flights",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: AppResponsive.screenHeight * 0.03,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter",
                ),
              ),
              SizedBox(
                height: AppResponsive.screenHeight * 0.023,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Details",
                        style: AppTextStyles.titleBigger(
                          color: AppColors.black,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "(For E-Ticket/Voucher)",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.grey.withValues(alpha: 0.7),
                        ).copyWith(
                          fontSize: AppResponsive.height(0.017),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.height(0.019),
                      ),
                      Container(
                        height: AppResponsive.height(0.17),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppResponsive.screenHeight * 0.015,
                          vertical: AppResponsive.screenHeight * 0.0087,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppResponsive.height(0.01)),
                          border: Border.all(
                            color: AppColors.grey.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: AppResponsive.height(0.05),
                                      width: AppResponsive.width(0.07),
                                      decoration: BoxDecoration(
                                        color: AppColors.grey
                                            .withValues(alpha: 0.35),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: AppResponsive.width(0.02),
                                    ),
                                    Text(
                                      "Matt Murdock",
                                      style: AppTextStyles.titleBigger(
                                        color: AppColors.black,
                                      ).copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: AppResponsive.height(0.02),
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ContactInfoScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Edit",
                                    style: AppTextStyles.titleBigger(
                                      color: AppColors.blue,
                                    ).copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: AppResponsive.height(0.018),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppResponsive.height(0.007),
                            ),
                            Container(
                              height: AppResponsive.height(0.083),
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppResponsive.screenWidth * 0.02),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    AppResponsive.height(0.01)),
                                border: Border.all(
                                  color: AppColors.grey.withValues(alpha: 0.3),
                                ),
                              ),
                              child: Column(
                                spacing: AppResponsive.screenHeight * 0.007,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    spacing: AppResponsive.screenWidth * 0.02,
                                    children: [
                                      Icon(
                                        IconsPaths.email,
                                        color: AppColors.blue,
                                        size:
                                            AppResponsive.screenHeight * 0.025,
                                      ),
                                      Text(
                                        "freedom999@gmail.com",
                                        style: AppTextStyles.bodyBigger(
                                          color: AppColors.grey
                                              .withValues(alpha: 0.7),
                                        ).copyWith(
                                          fontSize: AppResponsive.height(0.017),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    spacing: AppResponsive.screenWidth * 0.02,
                                    children: [
                                      Icon(
                                        IconsPaths.phone,
                                        color: AppColors.blue,
                                        size:
                                            AppResponsive.screenHeight * 0.025,
                                      ),
                                      Text(
                                        "+998977067716",
                                        style: AppTextStyles.bodyBigger(
                                          color: AppColors.grey
                                              .withValues(alpha: 0.7),
                                        ).copyWith(
                                          fontSize: AppResponsive.height(0.017),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.023,
                      ),
                      Text(
                        "Passenger Info",
                        style: AppTextStyles.titleBigger(
                          color: AppColors.black,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.017,
                      ),
                      boxOfTextAndIconMaker(
                        "Same As Contact Details",
                        Transform.translate(
                          offset: Offset(AppResponsive.width(0.03), 0),
                          child: Transform.scale(
                            scale: AppResponsive.screenWidth * 0.00159,
                            child: Switch(
                              activeColor: AppColors.white,
                              activeTrackColor: AppColors.blue,
                              inactiveThumbColor: AppColors.black,
                              trackOutlineWidth: WidgetStatePropertyAll(0),
                              value: switchOn,
                              onChanged: (value) {
                                setState(() {
                                  switchOn = !switchOn;
                                });
                              },
                            ),
                          ),
                        ),
                        null,
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.02,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PassengersInfoScreen(),
                          ),
                        ),
                        child: boxOfTextAndIconMaker(
                          "Abdusalom G'ayratov",
                          Icon(
                            IconsPaths.forward,
                            color: AppColors.grey.withValues(alpha: 0.7),
                            size: AppResponsive.screenHeight * 0.023,
                          ),
                          null,
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.023,
                      ),
                      Text(
                        "Facility",
                        style: AppTextStyles.titleBigger(
                          color: AppColors.black,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.017,
                      ),
                      boxOfTextAndIconMaker(
                        "Baggage",
                        Transform.translate(
                          offset: Offset(AppResponsive.width(0.039), 0),
                          child: IconButton(
                            onPressed: () {
                              showBaggageAddBottomSheet(context);
                            },
                            icon: Icon(
                              IconsPaths.add,
                              color: AppColors.grey.withValues(alpha: 0.9),
                              size: AppResponsive.screenHeight * 0.03,
                            ),
                          ),
                        ),
                        Text(
                          "Add extra baggage",
                          style: AppTextStyles.bodyBigger(
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ).copyWith(
                            fontSize: AppResponsive.height(0.017),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.023,
                      ),
                      Text(
                        "Extra Protection",
                        style: AppTextStyles.titleBigger(
                          color: AppColors.black,
                        ).copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.017,
                      ),
                      Container(
                        height: AppResponsive.height(0.25),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: AppResponsive.screenHeight * 0.017,
                          vertical: AppResponsive.screenHeight * 0.011,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppResponsive.height(0.01)),
                          border: Border.all(
                            color: AppColors.grey.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      IconsPaths.check,
                                      size: AppResponsive.height(0.037),
                                      color: AppColors.blue,
                                    ),
                                    SizedBox(width: AppResponsive.width(0.029)),
                                    Text(
                                      "Travel Insurance",
                                      style: AppTextStyles.titleBigger(
                                        color: AppColors.black,
                                      ).copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: AppResponsive.height(0.02)),
                                    ),
                                  ],
                                ),
                                Text(
                                  "\$99",
                                  style: AppTextStyles.bigTextBigger(
                                    color: AppColors.black,
                                  ).copyWith(
                                    fontSize: AppResponsive.height(0.035),
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: AppResponsive.height(0.01),
                            ),
                            doneIconWithTextMaker(
                              "Coverage for Accidents up to \$10000",
                            ),
                            doneIconWithTextMaker(
                              "Coverage for trip cancellation by passengers up to \$1250",
                            ),
                            SizedBox(
                              height: AppResponsive.height(0.02),
                            ),
                            Container(
                              width: double.infinity,
                              height: AppResponsive.height(0.061),
                              decoration: BoxDecoration(
                                color: AppColors.white1,
                                borderRadius: BorderRadius.circular(
                                  AppResponsive.height(0.01),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_circle,
                                      color: AppColors.blue,
                                      size: AppResponsive.height(0.025),
                                    ),
                                    SizedBox(
                                      width: AppResponsive.width(0.03),
                                    ),
                                    Text(
                                      "Add Insurance",
                                      style: AppTextStyles.titleBigger(
                                        color: AppColors.black,
                                      ).copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: AppResponsive.height(0.021),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: AppTextStyles.bodyBigger(
                                      color:
                                          AppColors.grey.withValues(alpha: 0.7),
                                    ).copyWith(
                                      fontSize: AppResponsive.height(0.016),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: AppResponsive.width(0.007),
                                  ),
                                  Icon(
                                    IconsPaths.down,
                                    color: AppColors.blue,
                                    size: AppResponsive.height(0.025),
                                  ),
                                ],
                              ),
                              Text(
                                "\$219",
                                style: AppTextStyles.bigTextBigger(
                                  color: AppColors.black,
                                ).copyWith(
                                  fontSize: AppResponsive.height(0.035),
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppResponsive.width(0.03)),
                            height: AppResponsive.height(0.061),
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(
                                AppResponsive.height(0.01),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Select Seat",
                                    style: AppTextStyles.titleBigger(
                                      color: AppColors.white,
                                    ).copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: AppResponsive.height(0.021),
                                    ),
                                  ),
                                  SizedBox(
                                    width: AppResponsive.width(0.03),
                                  ),
                                  Icon(
                                    IconsPaths.check,
                                    color: AppColors.white,
                                    size: AppResponsive.height(0.025),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppResponsive.screenHeight * 0.04,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

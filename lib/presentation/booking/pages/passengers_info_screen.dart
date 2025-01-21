import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class PassengersInfoScreen extends StatefulWidget {
  const PassengersInfoScreen({super.key});

  @override
  State<PassengersInfoScreen> createState() => _PassengersInfoScreenState();
}

class _PassengersInfoScreenState extends State<PassengersInfoScreen> {
  String outerValue = "val1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
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
                "Passenger Info",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: AppResponsive.screenHeight * 0.03,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Inter",
                ),
              ),
              SizedBox(
                height: AppResponsive.screenHeight * 0.005,
              ),
              Transform.translate(
                offset: Offset(-AppResponsive.screenWidth * 0.037, 0),
                child: Row(
                  spacing: AppResponsive.screenWidth * 0.03,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Radio(
                            value: "val1",
                            groupValue: outerValue,
                            onChanged: (value) {
                              setState(() {
                                outerValue = value!;
                              });
                            },
                            activeColor: AppColors.blue,
                            splashRadius: AppResponsive.screenHeight * 0.039,
                          ),
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: AppResponsive.screenHeight * 0.0219,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Radio(
                            value: "val2",
                            groupValue: outerValue,
                            onChanged: (value) {
                              setState(() {
                                outerValue = value!;
                              });
                            },
                            activeColor: AppColors.blue,
                            splashRadius: AppResponsive.screenHeight * 0.039,
                          ),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: AppResponsive.screenHeight * 0.0219,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.01),
              ),
              twoTextInsideBoxMaker("Full Name", "Abzalxon Akramov"),
              SizedBox(
                height: AppResponsive.height(0.023),
              ),
              twoTextInsideBoxMaker("Email Address", "Abzalxon1@gmail.com"),
              SizedBox(
                height: AppResponsive.height(0.023),
              ),
              twoTextInsideBoxMaker("ID card number", "9021877270987"),
              SizedBox(height: AppResponsive.height(0.01)),
              Text(
                "This contact is for e-ticket and refund/rescheduling",
                style: AppTextStyles.bodyBigger(
                  color: AppColors.grey.withValues(alpha: 0.7),
                ).copyWith(
                  fontSize: AppResponsive.height(0.017),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.037),
              ),
              Container(
                width: double.infinity,
                height: AppResponsive.height(0.061),
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(
                    AppResponsive.height(0.01),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Save Changes",
                        style: AppTextStyles.titleBigger(
                          color: AppColors.white,
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
      ),
    );
  }

  Container twoTextInsideBoxMaker(String text1, String text2) {
    return Container(
      height: AppResponsive.height(0.08),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppResponsive.height(0.01),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppResponsive.height(0.01)),
        border: Border.all(
          color: AppColors.grey.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppResponsive.screenHeight * 0.003,
        children: [
          Text(
            text1,
            style: AppTextStyles.bodyBigger(
              color: AppColors.grey.withValues(alpha: 0.7),
            ).copyWith(
              fontSize: AppResponsive.height(0.017),
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            text2,
            style: AppTextStyles.titleBigger(
              color: AppColors.black,
            ).copyWith(
              fontWeight: FontWeight.w600,
              fontSize: AppResponsive.height(0.021),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/booking/pages/booking_details.dart';
import 'package:flutter/material.dart';

class FlightsOptions extends StatelessWidget {
  const FlightsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              // Global Map Part
              Image(
                image: AssetImage(
                  ImgPaths.globalMap,
                ),
                height: AppResponsive.height(0.65),
                width: AppResponsive.screenWidth,
                fit: BoxFit.contain,
              ),
              Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppResponsive.width(0.09)),
                  child: Column(
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
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                IconsPaths.back,
                                size: AppResponsive.screenHeight * 0.031,
                                color: AppColors.white,
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Search Flights",
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize:
                                          AppResponsive.screenHeight * 0.03,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: AppResponsive.height(0.09),
                            ),
                            // Flight Options Part 🤪
                            makeOption(context),
                            makeOption(context),
                            makeOption(context),
                            makeOption(context),
                            makeOption(context),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget makeOption(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BookingDetails(),),);
      },
      child: ClipRect(
        child: Container(
          height: AppResponsive.screenHeight * 0.27,
          width: double.infinity,
          margin: EdgeInsets.only(bottom: AppResponsive.height(0.031)),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(
              AppResponsive.height(0.03),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Flight Option Top Part
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppResponsive.height(0.027),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LGA",
                          style: AppTextStyles.bigTextSmaller(
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          "New York",
                          style: AppTextStyles.bodyBigger(
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ).copyWith(
                            fontSize: AppResponsive.height(0.015),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                  ImgPaths.greyCircle,
                                ),
                                height: AppResponsive.height(0.03),
                              ),
                              Image(
                                image: AssetImage(
                                  ImgPaths.line,
                                ),
                                width: AppResponsive.width(0.1),
                                fit: BoxFit.contain,
                              ),
                              Transform.rotate(
                                angle: 1.6,
                                child: Icon(
                                  Icons.airplanemode_active_sharp,
                                  color: AppColors.blue,
                                  size: AppResponsive.width(0.063),
                                ),
                              ),
                              Image(
                                image: AssetImage(
                                  ImgPaths.line,
                                ),
                                width: AppResponsive.width(0.1),
                                fit: BoxFit.contain,
                              ),
                              Image(
                                image: AssetImage(
                                  ImgPaths.greyCircle,
                                ),
                                height: AppResponsive.height(0.03),
                              )
                            ],
                          ),
                          Text(
                            "23:00 hours",
                            style: AppTextStyles.bodyBigger(
                              color: AppColors.black,
                            ).copyWith(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "DAD",
                          style: AppTextStyles.bigTextSmaller(
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          "Da Nang",
                          style: AppTextStyles.bodyBigger(
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ).copyWith(
                            fontSize: AppResponsive.height(0.015),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.015),
              ),
              // Flight Option Middle Part
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppResponsive.height(0.027)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8:00 AM",
                          style: AppTextStyles.bigTextSmaller(
                            color: AppColors.black,
                          ).copyWith(
                            fontSize: AppResponsive.height(0.022),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "August 28, 2021",
                          style: AppTextStyles.bodyBigger(
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ).copyWith(
                            fontSize: AppResponsive.height(0.015),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "7:00 AM",
                          style: AppTextStyles.bigTextSmaller(
                            color: AppColors.black,
                          ).copyWith(
                            fontSize: AppResponsive.height(0.022),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "August 29, 2021",
                          style: AppTextStyles.bodyBigger(
                            color: AppColors.grey.withValues(alpha: 0.7),
                          ).copyWith(
                            fontSize: AppResponsive.height(0.015),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.01),
              ),
              // Flight Option Blue Cicles and Line Part
              Row(
                children: [
                  Transform.translate(
                    offset: Offset(-AppResponsive.width(0.037), 0),
                    child: Container(
                      height: AppResponsive.height(0.039),
                      width: AppResponsive.width(0.07),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage(
                        ImgPaths.longLine,
                      ),
                      width: AppResponsive.width(0.65),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(AppResponsive.width(0.037), 0),
                    child: Container(
                      height: AppResponsive.height(0.039),
                      width: AppResponsive.width(0.07),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.blue,
                      ),
                    ),
                  )
                ],
              ),
      
              // Flight Option Bottom Part
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppResponsive.height(0.027),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Image(
                        image: AssetImage(ImgPaths.qatarAirwaySymbol),
                        height: AppResponsive.height(0.039),
                      ),
                      Text(
                        "Qatar Airway",
                        style: AppTextStyles.bodyBigger(
                          color: AppColors.grey.withValues(alpha: 0.7),
                        ).copyWith(
                          fontSize: AppResponsive.height(0.015),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                    Text(
                      "\$ 340",
                      style: AppTextStyles.bigTextSmaller(
                        color: AppColors.black,
                      ).copyWith(
                        fontSize: AppResponsive.height(0.022),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

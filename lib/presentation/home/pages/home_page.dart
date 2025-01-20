import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/app_responsive.dart';
import '../../booking/pages/flights_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String outerValue = "val1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blue,
        body: SizedBox(
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: AppResponsive.screenHeight * 0.07,
                                ),
                                Text(
                                  "Search Flights",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: AppResponsive.screenHeight * 0.03,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: AppResponsive.screenWidth * 0.1,
                              bottom: AppResponsive.screenWidth * 0.055,
                            ),
                            child: Text(
                              "Discover \na new world",
                              style: TextStyle(
                                height: AppResponsive.screenHeight * 0.0016,
                                color: AppColors.white,
                                fontSize: AppResponsive.screenHeight * 0.045,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 9,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(AppResponsive.screenWidth * 0.079),
                      topRight:
                          Radius.circular(AppResponsive.screenWidth * 0.079),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppResponsive.height(0.037),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppResponsive.height(0.025),
                          ),
                          // Top Two Options Part
                          Transform.translate(
                            offset:
                                Offset(-AppResponsive.screenWidth * 0.037, 0),
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
                                        splashRadius:
                                            AppResponsive.screenHeight * 0.039,
                                      ),
                                    ),
                                    Text(
                                      "One-way",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: AppResponsive.screenHeight *
                                              0.0219,
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
                                        splashRadius:
                                            AppResponsive.screenHeight * 0.039,
                                      ),
                                    ),
                                    Text(
                                      "Round-trip",
                                      style: TextStyle(
                                        color: AppColors.black,
                                        fontSize:
                                            AppResponsive.screenHeight * 0.0219,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          textAndContainerMaker(
                            "From",
                            "New York, USA",
                            IconsPaths.flightTakeOff,
                          ),
                          textAndContainerMaker(
                            "To",
                            "Da Nang, Vietnam",
                            IconsPaths.flightLanding,
                          ),
                          textAndContainerMaker(
                            "Departure Date",
                            "August 28, 2021",
                            IconsPaths.calendar,
                          ),
                          textAndContainerMaker(
                            "Travelers",
                            "1 Adult, 1 child, 0 Infant",
                            IconsPaths.passenger,
                          ),
                          SizedBox(
                            height: AppResponsive.screenHeight * 0.037,
                          ),
                          Container(
                            height: AppResponsive.screenHeight * 0.065,
                            width: double.infinity,
                            padding: EdgeInsets.only(
                                left: AppResponsive.screenWidth * 0.05),
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(
                                AppResponsive.screenHeight * 0.017,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FlightsOptions(),
                                  ),
                                );
                              },
                              child: Text(
                                "Search flights",
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: AppResponsive.screenHeight * 0.023,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: AppResponsive.screenHeight * 0.037,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget textAndContainerMaker(String text, String innerText, IconData icon) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: AppResponsive.screenHeight * 0.017,
      ),
      // From Text
      Text(
        text,
        style: TextStyle(
          color: AppColors.black,
          fontSize: AppResponsive.screenHeight * 0.0239,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: AppResponsive.screenHeight * 0.01),
      // From Container Part
      Container(
        height: AppResponsive.screenHeight * 0.065,
        width: double.infinity,
        padding: EdgeInsets.only(left: AppResponsive.screenWidth * 0.05),
        decoration: BoxDecoration(
          border: Border.all(
              color: AppColors.grey,
              width: AppResponsive.screenHeight * 0.0005),
          color: AppColors.grey.withValues(alpha: 0.13),
          borderRadius: BorderRadius.circular(
            AppResponsive.screenHeight * 0.017,
          ),
        ),
        child: Row(
          spacing: AppResponsive.screenWidth * 0.05,
          children: [
            Icon(
              icon,
              color: AppColors.blue,
              size: AppResponsive.screenHeight * 0.033,
            ),
            Text(
              innerText,
              style: TextStyle(
                color: AppColors.black,
                fontSize: AppResponsive.screenHeight * 0.023,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/common/constants/img_paths.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/settings/pages/settings_page.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool switchOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Image and other deatils part
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                ),
                child: Container(
                  height: AppResponsive.height(0.3),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: AppResponsive.screenWidth * 0.07,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        AppResponsive.screenHeight * 0.05,
                      ),
                      bottomRight: Radius.circular(
                        AppResponsive.screenHeight * 0.05,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppResponsive.screenHeight * 0.09,
                          ),
                          Text(
                            "My Profile",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: AppResponsive.screenHeight * 0.03,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Image(
                                  image: AssetImage(
                                    ImgPaths.character,
                                  ),
                                  height: AppResponsive.height(0.11),
                                  width: AppResponsive.width(0.21),
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(
                                  width: AppResponsive.width(0.05),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: AppResponsive.height(0.0027),
                                  children: [
                                    Text(
                                      "Abzalxon",
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontSize:
                                            AppResponsive.screenHeight * 0.03,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Inter",
                                      ),
                                    ),
                                    Text(
                                      "Abzalxon1@gmail.com",
                                      style: AppTextStyles.bodyBigger(
                                          color: AppColors.white),
                                    ),
                                    Text(
                                      "+998902187727",
                                      style: AppTextStyles.bodyBigger(
                                          color: AppColors.white),
                                    ),
                                  ],
                                ),
                              ]),
                              Icon(
                                Icons.note_alt_outlined,
                                color: AppColors.white,
                                size: AppResponsive.height(0.039),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: AppResponsive.screenHeight * 0.03,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconTextAnd3rdWidgetMaker(
                      Icons.flash_on_outlined,
                      "My Order",
                      Icon(
                        IconsPaths.forward,
                        color: AppColors.grey.withValues(alpha: 0.6),
                        size: AppResponsive.screenHeight * 0.023,
                      ),
                    ),
                    iconTextAnd3rdWidgetMaker(
                      Icons.card_giftcard,
                      "My Vaucher",
                      null,
                    ),
                    iconTextAnd3rdWidgetMaker(
                      Icons.payment_rounded,
                      "Payment Method",
                      Icon(
                        IconsPaths.forward,
                        color: AppColors.grey.withValues(alpha: 0.6),
                        size: AppResponsive.screenHeight * 0.023,
                      ),
                    ),
                    iconTextAnd3rdWidgetMaker(
                      Icons.person_add_alt_outlined,
                      "Invite Friends",
                      Icon(
                        IconsPaths.forward,
                        color: AppColors.grey.withValues(alpha: 0.6),
                        size: AppResponsive.screenHeight * 0.023,
                      ),
                    ),
                    iconTextAnd3rdWidgetMaker(
                      Icons.document_scanner_rounded,
                      "Quick Login",
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.02),
              ),
              Container(
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconTextAnd3rdWidgetMaker(
                      Icons.question_mark_rounded,
                      "My Order",
                      Icon(
                        IconsPaths.forward,
                        color: AppColors.grey.withValues(alpha: 0.6),
                        size: AppResponsive.screenHeight * 0.023,
                      ),
                    ),
                    GestureDetector(
                      child: iconTextAnd3rdWidgetMaker(
                        Icons.settings,
                        "Settings",
                        Icon(
                          IconsPaths.forward,
                          color: AppColors.grey.withValues(alpha: 0.6),
                          size: AppResponsive.screenHeight * 0.023,
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, RouteNames.settingsPage);
                      },
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.02),
              ),
              Container(
                color: AppColors.white,
                child: iconTextAnd3rdWidgetMaker(
                  Icons.logout_outlined,
                  "Log Out",
                  Icon(
                    IconsPaths.forward,
                    color: AppColors.grey.withValues(alpha: 0.6),
                    size: AppResponsive.screenHeight * 0.023,
                  ),
                ),
              ),
              SizedBox(
                height: AppResponsive.height(0.02),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container iconTextAnd3rdWidgetMaker(
      IconData icon, String text, Widget? leftWidget) {
    return Container(
      height: AppResponsive.height(0.09),
      margin: EdgeInsets.symmetric(
        horizontal: AppResponsive.screenWidth * 0.07,
      ),
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(
              bottom: BorderSide(
            color: AppColors.white1,
          ))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: AppResponsive.screenHeight * 0.037,
                    color: AppColors.blue,
                  ),
                  SizedBox(
                    width: AppResponsive.width(0.037),
                  ),
                  Text(
                    text,
                    style: AppTextStyles.bodyBigger(color: AppColors.black)
                        .copyWith(
                      fontSize: AppResponsive.height(0.0221),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              leftWidget ?? SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}

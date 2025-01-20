import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/common/constants/icons_paths.dart';
import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flight_booking_app/core/common/constants/strings/auth_strings.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flight_booking_app/core/utils/app_textstyles.dart';
import 'package:flight_booking_app/presentation/auth/widgets/auth_check_button_wg.dart';
import 'package:flight_booking_app/presentation/auth/widgets/ordinary_container_wg.dart';
import 'package:flight_booking_app/presentation/auth/widgets/ordinary_text_field_wg.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppResponsive.width(0.064),
          vertical: AppResponsive.height(0.083),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                size: AppResponsive.height(0.03),
              ),
              SizedBox(height: AppResponsive.height(0.05)),
              Text(
                AuthStrings.signInTitle,
                style: AppTextStyles.bigTextBigger(color: AppColors.black),
              ),
              SizedBox(height: AppResponsive.height(0.02)),
              Text(
                AuthStrings.signUpSubtitle,
                style: AppTextStyles.bodyBigger(color: AppColors.grey),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: AppResponsive.height(0.029),
                children: [
                  OrdinaryTextFieldWg(
                      label: AuthStrings.emailLabel,
                      hintText: AuthStrings.emailPlaceholder),
                  OrdinaryTextFieldWg(
                      label: AuthStrings.passwordLabel,
                      hintText: AuthStrings.passwordPlaceholder),
                  // Button
                  AuthCheckButtonWg(
                      onPressed: () {
                        Navigator.pushNamed(context, RouteNames.signupPage);
                      },
                      text: AuthStrings.signInButton),
                  Text(
                    AuthStrings.signInWith,
                    style: AppTextStyles.bodyBigger(color: AppColors.grey),
                  ),
                  Row(
                    spacing: AppResponsive.width(0.04),
                    children: [
                      OrdinaryContainerWg(path: IconsPaths.facebook),
                      OrdinaryContainerWg(path: IconsPaths.google),
                      OrdinaryContainerWg(path: IconsPaths.apple),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AuthStrings.dontHaveAccount,
                        style: AppTextStyles.bodyBigger(color: AppColors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AuthStrings.signUpLink,
                          style:
                              AppTextStyles.bodyBigger(color: AppColors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

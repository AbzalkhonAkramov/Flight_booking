import 'package:flight_booking_app/core/common/constants/route_names.dart';
import 'package:flutter/material.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/common/constants/icons_paths.dart';
import '../../../core/common/constants/strings/auth_strings.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';
import '../widgets/auth_check_button_wg.dart';
import '../widgets/ordinary_container_wg.dart';
import '../widgets/ordinary_text_field_wg.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                AuthStrings.signUpTitle,
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
                  AuthCheckButtonWg(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, RouteNames.paymentDetailsPage);
                      },
                      text: AuthStrings.signInButton),
                  Text(
                    AuthStrings.signUpWith,
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
                        AuthStrings.alreadyHaveAccount,
                        style: AppTextStyles.bodyBigger(color: AppColors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AuthStrings.signInLink,
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

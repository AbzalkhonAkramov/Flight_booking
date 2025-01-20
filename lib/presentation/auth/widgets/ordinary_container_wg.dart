import 'package:flight_booking_app/core/common/constants/app_colors.dart';
import 'package:flight_booking_app/core/utils/app_responsive.dart';
import 'package:flutter/cupertino.dart';

class OrdinaryContainerWg extends StatelessWidget {
  final String path;

  const OrdinaryContainerWg({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppResponsive.height(0.08),
        color: AppColors.lightGrey,
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            path,
            height: AppResponsive.height(0.04),
            width: AppResponsive.width(0.085),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import '../../../core/common/constants/app_colors.dart';
import '../../../core/utils/app_responsive.dart';
import '../../../core/utils/app_textstyles.dart';

class PasscodeInputContainerWg extends StatelessWidget {
  const PasscodeInputContainerWg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.045),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => Container(
          color: AppColors.grey1,
          margin: EdgeInsets.only(right: AppResponsive.width(0.021)),
          width: AppResponsive.width(0.125),
          height: AppResponsive.height(0.04),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '7',
              style: AppTextStyles.bodyBigger(color: AppColors.black),
            ),
          ),
        ),
      ),
    );
  }
}

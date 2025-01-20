import 'package:flutter/material.dart';

import '../../../core/utils/app_responsive.dart';

class SettingsContainerWg extends StatelessWidget {
  final Widget heading;
  final List<Widget> texts;

  const SettingsContainerWg(
      {super.key, required this.heading, required this.texts});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          heading,
          Container(
            padding: EdgeInsets.symmetric(
              vertical: AppResponsive.height(0.019),
            ),
            child: Column(
              spacing: AppResponsive.height(0.01),
              children: texts,
            ),
          ),
        ],
      ),
    );
  }
}

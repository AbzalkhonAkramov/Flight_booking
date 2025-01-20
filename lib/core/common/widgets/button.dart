import 'package:flutter/material.dart';

import '../../utils/app_responsive.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget childWg;
  final Color? color;

  const Button(
      {super.key,
      required this.onPressed,
      required this.childWg,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.height(0.06),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Adjust the value as needed
        ),
        child: childWg,
      ),
    );
  }
}

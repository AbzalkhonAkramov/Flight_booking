import 'package:flutter/material.dart';

Widget makeRow(double height, double width, bool isMain) {
  return Container(
    height: height * 0.007,
    width: width,
    decoration: BoxDecoration(
      color:
          isMain ? Colors.blueAccent : Colors.blueAccent.withValues(alpha: 0.3),
      borderRadius: BorderRadius.circular(height * 0.013),
    ),
  );
}
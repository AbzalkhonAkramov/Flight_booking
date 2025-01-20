import 'package:flight_booking_app/presentation/intro/widgets/row_maker.dart';
import 'package:flutter/material.dart';

List<Widget> makeRowOfLines(double width, double height, int page) {
  List<Widget> list = [];
  for (int i = 1; i <= 3; i++) {
    page == i
        ? list.add(makeRow(height, width * 0.15, true))
        : list.add(makeRow(height, width * 0.05, false));
  }
  return list;
}

import 'package:flutter/material.dart';

class AppColors {
  // blue
  static MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      10: Color(0xFFDAEBFF),
      20: Color(0xFFB4D8FF),
      30: Color(0xFF8FC4FF),
      40: Color(0xFF69B0FF),
      50: Color(0xFF439DFF),
      60: Color(0xFF1E89FF),
      70: Color(0xFF0076F8),
      80: Color(_bluePrimaryValue),
    },
  );
  static const int _bluePrimaryValue = 0xFF0064D2;

  // red
  static MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      10: Color(0xFFFCE9E9),
      20: Color(0xFFF9D2D2),
      30: Color(0xFFF6BCBC),
      40: Color(0xFFF3A5A5),
      50: Color(0xFFF08F8F),
      60: Color(0xFFEC7878),
      70: Color(0xFFE64B4B),
      80: Color(_redPrimaryValue),
    },
  );
  static const int _redPrimaryValue = 0xFFE01E1E;

  // green
  static MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      10: Color(0xFFB8F5D0),
      20: Color(0xFFA0F1C0),
      30: Color(0xFF88EEB1),
      40: Color(0xFF70EBA1),
      50: Color(0xFF58E791),
      60: Color(0xFF41E481),
      70: Color(0xFF29E072),
      80: Color(_greenPrimaryValue),
    },
  );
  static const int _greenPrimaryValue = 0xFF0CC857;

  // orange
  static MaterialColor orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      10: Color(0xFFFFF6E8),
      20: Color(0xFFFEECD1),
      30: Color(0xFFFEE3BA),
      40: Color(0xFFFED9A3),
      50: Color(0xFFFED08C),
      60: Color(0xFFFDC775),
      70: Color(0xFFFDB447),
      80: Color(_orangePrimaryValue),
    },
  );
  static const int _orangePrimaryValue = 0xFFFCA119;

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color lightGrey = Color(0xFFF2F3F6);
  static const Color grey = Color(0xFF808080);
  static const Color grey1 = Color(0xFFF4F4F4);
  static const Color gold = Color(0xFFB08300);
  static const Color white1 = Color(0xFFEAEAEA);
  static const Color black1 = Color(0xFF252831);

}

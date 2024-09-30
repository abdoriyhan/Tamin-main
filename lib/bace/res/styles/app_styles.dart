import 'package:flutter/material.dart';

const Color primary = Color(0xff687daf);

class AppStyles {
  static const Color selectedItemColorBottomNavBar = primary;
  static const Color unselectedItemColorBottomNavBar =
      Color.fromARGB(255, 205, 215, 240);
  static Color bgColor = const Color(0xFFEEEDF2);
  static const Color primaryColor = primary;
  static const Color textColor = Color(0xff3b3b3b);
  static const Color ticketBlue = Color(0xff526799);
  static const Color ticketOrange = Color(0xfff37b67);

  static const TextStyle headline =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: textColor);
  static const TextStyle headline1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static const TextStyle headline2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold);
  static const TextStyle headline3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: primaryColor);
}

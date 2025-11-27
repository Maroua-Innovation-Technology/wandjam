import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Palette {
  static const Color primary = Color(0xFF1F41BB);
  static const Color textfield = Color(0xFFF1F4FF);
  static const Color secondary = Color(0xFF000000);
  static const Color grey = Color(0xFF878787);
  static const Color black = Color(0xFF000000);

  static const Color scaffold = Color.fromARGB(255, 255, 255, 255);
  static const colorBottomSheet = Color.fromARGB(255, 186, 186, 186);
  static const gradient = LinearGradient(
      colors: [Color.fromARGB(255, 207, 242, 255), Color(0xFFFFFFFF)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  static appBarColors(var context) {
    Color appBarColors = Get.isDarkMode ? Colors.transparent : Colors.white;
    return appBarColors;
  }

  static scaffoldColors(var context) {
    Color scaffoldColors =
        Get.isDarkMode ? const Color.fromARGB(255, 53, 52, 52) : Colors.white;
    return scaffoldColors;
  }

  static const MaterialColor swatch = MaterialColor(0xFF39B54A, {
    50: Color(0xFFFFFFFF),
    60: Color(0xFFFFFFFF),
    70: Color(0xFFFFFFFF),
    80: Color(0xFFFFFFFF),
    90: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });

  static const Color online = Color.fromARGB(255, 45, 165, 5);
  static const Color whatsapp = Color.fromARGB(255, 45, 165, 5);
  static const Color colorSearchBar = Color(0xD9D9D9D9);
  static generateColorFromName(String userName) {
    int totalValue = 0;

    for (int i = 0; i < userName.length; i++) {
      totalValue += userName.codeUnitAt(i);
    }
    int colorValue = totalValue % 0xFFEDF2F3;
    Color color = Color(colorValue);
    return color;
  }
}

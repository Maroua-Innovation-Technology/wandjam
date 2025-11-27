import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'palette.dart';

class ThemeApp {
  static theme() {
    return ThemeData(
        useMaterial3: true,
        fontFamily: "Poppins",
        colorSchemeSeed: Palette.primary,
        scaffoldBackgroundColor: Palette.scaffold,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Palette.scaffold,
          iconTheme: IconThemeData(color: Palette.primary),
        ),
        brightness: Get.isDarkMode ? Brightness.dark : Brightness.light);
  }
}

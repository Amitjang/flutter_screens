import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_1/core/constants/font_weight.dart';

import '../colors/app_colors.dart';

appLightTheme(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primarySwatch: createMaterialColor(white0xFFFFFFFF),
    backgroundColor: white0xFFFFFFFF,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      iconTheme: const IconThemeData(
        color: blue0xFF1B2C41,
        size: 28,
      ),
      titleTextStyle: TextStyle(
          color: blue0xFF1B2C41,
          fontSize: 18,
          fontWeight: semiBold,
          fontFamily: GoogleFonts.poppins().fontFamily),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

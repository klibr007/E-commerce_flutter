import 'package:flutter/material.dart';

class Palette {

  static const Color primaryColor = Color(0xFFFF7643);
  static const Color primaryLightColor = Color(0xFFFFECDF);

  static const LinearGradient primaryLinearGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]
  );

  static const Color secondaryColor = Color(0xFF979797) ;
  static const Color textColor = Color(0xFF757575);

  static const Duration animationDuration = Duration(milliseconds: 200);

  static const Color scaffold = Color(0xFFF0F2F5);
  static const Color themeColor = Colors.teal;
  static const Color lightThemeColor = Color(0xFFB2DFdB);

}

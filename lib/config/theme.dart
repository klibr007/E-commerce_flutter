import 'package:flutter/material.dart';

import 'config.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Palette.primaryColor,
    fontFamily: "Muli",
    appBarTheme: _appBarTheme(),
    textTheme: _textTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

AppBarTheme _appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
          headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18)));
}

TextTheme _textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Colors.red),
    bodyText2: TextStyle(color: Palette.textColor),
  );
}

InputDecorationTheme _inputDecorationTheme(){
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Palette.textColor),
    gapPadding: 10.0,
  );

  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}


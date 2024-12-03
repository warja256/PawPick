import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFEEB738);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        labelMedium: TextStyle(color: Color(0xFF323755)),
      ));
}

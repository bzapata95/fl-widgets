import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: primary,
        elevation: 0,
      )));
}

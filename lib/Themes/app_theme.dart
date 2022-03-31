import 'package:flutter/material.dart';

class AppTheme{
  static const Color primaryColor = Colors.white;
  // 247,175,29,2
  // 143,175,123,12
  // 53,207,195,19
  static const double globalElevation = 0;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: globalElevation,
      foregroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

    )
  );
  static final ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      centerTitle: true,
      elevation: globalElevation,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
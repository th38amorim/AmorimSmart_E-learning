import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const int _primaryValue = 0xFF5D54FF;

  static const MaterialColor primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFEAEAFF),
      100: Color(0xFFC9C4FF),
      200: Color(0xFFA495FF),
      300: Color(0xFF7E65FF),
      400: Color(0xFF6259FF),
      500: Color(_primaryValue),
      600: Color(0xFF554CFF),
      700: Color(0xFF4B41FF),
      800: Color(0xFF4237FF),
      900: Color(0xFF331FFF),
    },
  );

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: primarySwatch,
    scaffoldBackgroundColor: const Color(0XFFF2F3F5),
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
    textTheme: const TextTheme(
      // Caption2 / Regular
      bodySmall: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 13 / 11,
      ),
      // Caption1 / Regular
      labelSmall: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 16 / 12,
      ),
      // Footnote / Regular
      titleSmall: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 18 / 13,
      ),
      // Subheadline / Regular
      titleMedium: TextStyle(
        fontFamily: 'HK Grotesk',
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0XFF000000),
        height: 20 / 15,
      ),
      // Callout / Regular
      bodyMedium: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 21 / 16,
      ),
      // Body / Regular
      bodyLarge: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 22 / 17,
      ),
      // Headline / Regular
      titleLarge: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 22 / 17,
      ),
      // Title3 / Regular
      headlineSmall: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 25 / 20,
      ),
      // Title2 / Regular
      headlineMedium: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 28 / 22,
      ),
      // Title1 / Regular
      displaySmall: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 28,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 34 / 28,
      ),
      // LargeTitle / Regular
      displayMedium: TextStyle(
        fontFamily: 'HK Grotesk',
        fontSize: 34,
        fontWeight: FontWeight.w400,
        color: Color(0XFF000000),
        height: 41 / 34,
      ),
    ),
  );
}

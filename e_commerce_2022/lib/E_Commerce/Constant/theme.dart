import 'package:e_commerce_2022/E_Commerce/Constant/colorsManager.dart';
import 'package:flutter/material.dart';

ThemeMode themeMode = ThemeMode.light;

ThemeData lightTheme = ThemeData(
  fontFamily: "MyFont",
  primarySwatch: ColorsManager.primarySwatch,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      height: 1.3,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
);
ThemeData darkTheme = ThemeData(
  fontFamily: "MyFont",
  primarySwatch: ColorsManager.primarySwatch,
  scaffoldBackgroundColor: const Color(0xff0A111F),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      height: 1.3,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  ),
);

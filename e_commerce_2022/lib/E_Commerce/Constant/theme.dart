import 'package:e_commerce_2022/E_Commerce/Constant/colorsManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeMode themeMode = ThemeMode.light;

ThemeData lightTheme = ThemeData(
  primaryColor: Colors.black,
  fontFamily: "MyFont",
  primarySwatch: ColorsManager.primarySwatch,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10),
      backgroundColor: ColorsManager.primaryColor,
      foregroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 700),
      minimumSize: const Size(double.infinity, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 205, 205, 205),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorsManager.primaryColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorsManager.primaryColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      height: 1.3,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    displayLarge: TextStyle(
      height: 1.3,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      height: 1.3,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.grey,
    ),
  ),
);

///////////////////////
//////////////////////
ThemeData darkTheme = ThemeData(
  primaryColor: Colors.white,
  fontFamily: "MyFont",
  primarySwatch: ColorsManager.primarySwatch,
  scaffoldBackgroundColor: const Color(0xff0A111F),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Color(0xff0A111F),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xff0A111F),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 10),
      backgroundColor: ColorsManager.primaryColor,
      foregroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 700),
      minimumSize: const Size(double.infinity, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 205, 205, 205),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorsManager.primaryColor,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorsManager.primaryColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      height: 1.3,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    displayLarge: TextStyle(
      height: 1.3,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      height: 1.3,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.grey,
    ),
  ),
);

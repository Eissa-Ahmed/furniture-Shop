import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/theme.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/LoginScreen/loginScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/OnBoardingScreen/onBoardingScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/SplashScreen/splashScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Services/myBindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      getPages: [
        GetPage(
          name: RoutesString.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: RoutesString.onBoradingScreen,
          page: () => OnBoardingScreen(),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: RoutesString.loginScreen,
          page: () => LoginSceen(),
          transition: Transition.rightToLeftWithFade,
        ),
      ],
    );
  }
}

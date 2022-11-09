import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/dioHelper.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/theme.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/cachHelper.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/AuthScreens/LoginScreen/loginScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/AuthScreens/SignUpScreen/signUpScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/HomeScreen/homeScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/OnBoardingScreen/onBoardingScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/SplashScreen/splashScreen.dart';
import 'package:e_commerce_2022/E_Commerce/Services/middleWare.dart';
import 'package:e_commerce_2022/E_Commerce/Services/myBindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  DioHelper.init();
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
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesString.onBoradingScreen,
          page: () => OnBoardingScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 600),
          middlewares: [OnBoardingMiddleWare()],
        ),
        GetPage(
          name: RoutesString.loginScreen,
          page: () => LoginSceen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 600),
          middlewares: [LoginMiddleWare()],
        ),
        GetPage(
          name: RoutesString.signUpScreen,
          page: () => SignUpScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesString.homeScreen,
          page: () => HomeScreen(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ],
    );
  }
}

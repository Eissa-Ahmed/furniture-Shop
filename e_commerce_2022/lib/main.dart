import 'package:e_commerce_2022/E_Commerce/Presentation/LoginScreen/loginScreen.dart';
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
      getPages: [
        GetPage(
          name: "/",
          page: () => const SplashScreen(),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: "/login",
          page: () => LoginSceen(),
          transition: Transition.rightToLeftWithFade,
        ),
      ],
    );
  }
}

import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToLogin() {
    Future.delayed(const Duration(seconds: 3),
        () => Get.offAllNamed(RoutesString.onBoradingScreen));
  }

  @override
  void initState() {
    goToLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsString.splash),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

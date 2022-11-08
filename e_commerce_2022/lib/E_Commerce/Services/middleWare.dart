import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/cachHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (CachHelper.sharedPreferences.get("onBoarding") != null) {
      return const RouteSettings(name: RoutesString.loginScreen);
    }
    return null;
  }
}

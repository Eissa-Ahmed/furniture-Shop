import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Constant/colorsManager.dart';

SnackbarController customSnackBar(String title, String message) {
  return Get.snackbar(
    title,
    message,
    backgroundColor: ColorsManager.primaryColor,
    barBlur: 10,
    borderRadius: 0,
    duration: const Duration(seconds: 3),
    icon: const Icon(
      FontAwesomeIcons.circleInfo,
      color: Colors.white,
    ),
    margin: EdgeInsets.zero,
    padding: const EdgeInsets.all(10),
    animationDuration: const Duration(milliseconds: 700),
    colorText: Colors.white,
  );
}

customSnackBar2(String title, String message, BuildContext context) {
  final snackBar = SnackBar(
    content: Text(message),
    padding: const EdgeInsets.all(15),
    backgroundColor: ColorsManager.primaryColor,
    duration: const Duration(seconds: 3),
  );
  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

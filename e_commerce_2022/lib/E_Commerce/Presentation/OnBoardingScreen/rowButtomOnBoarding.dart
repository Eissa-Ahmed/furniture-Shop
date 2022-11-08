import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/colorsManager.dart';
import 'package:e_commerce_2022/E_Commerce/Controller/OnBoardingController/onBoardingController.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/iconBroken.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowButtomOnBoarding extends StatelessWidget {
  const RowButtomOnBoarding({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Get.offAllNamed(RoutesString.loginScreen);
          },
          child: const Text("SKIP"),
        ),
        InkWell(
          onTap: () {
            controller.inCrementCurrentIndex();
          },
          child: Container(
            width: 55,
            height: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.primaryColor,
            ),
            child: const Icon(
              IconBroken.Arrow___Right_2,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

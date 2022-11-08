import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  // Variables
  int currentIndexOnBoardingPage = 0;
  PageController pageController = PageController();

  //Lists
  List<String> onBoardingStrings = [
    "View And Experince\nFurniture With The Help\nOf Augmented Reality",
    "Design your Space With\nAugmented Reality By\nCreating Room",
    "Explore World Class Top\nFurniture As per Your\nReguments & choise",
  ];

  List<String> onBoardingImages = [
    AssetsString.onBoarding1,
    AssetsString.onBoarding2,
    AssetsString.onBoarding3,
  ];

  //Functions
  void changeCurrentIndiactor(int i) {
    currentIndexOnBoardingPage = i;
    update();
  }

  inCrementCurrentIndex() {
    currentIndexOnBoardingPage += 1;
    pageController.nextPage(
      curve: Curves.linear,
      duration: const Duration(milliseconds: 400),
    );
    update();
  }
}

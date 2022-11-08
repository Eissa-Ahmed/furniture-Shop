import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/colorsManager.dart';
import 'package:e_commerce_2022/E_Commerce/Controller/OnBoardingController/onBoardingController.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/OnBoardingScreen/itemOnBoarding.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/OnBoardingScreen/rowButtomOnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  OnBoardingController controller = Get.find<OnBoardingController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (i) {
                  controller.changeCurrentIndiactor(i);
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return ItemOnBoarding(
                    controller: controller,
                    i: i,
                  );
                },
                itemCount: controller.onBoardingImages.length,
              ),
            ),
            GetBuilder(
              init: OnBoardingController(),
              builder: (c) => customIndicator(c),
            ),
            const SizedBox(
              height: 40,
            ),
            GetBuilder<OnBoardingController>(
              builder: (c) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: c.currentIndexOnBoardingPage == 2
                    ? buttomOnBoarding()
                    : RowButtomOnBoarding(controller: controller),
              ),
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton buttomOnBoarding() {
    return ElevatedButton(
      onPressed: () {
        Get.offAllNamed(RoutesString.loginScreen);
      },
      child: const Text(
        "Get Started",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  AnimatedSmoothIndicator customIndicator(OnBoardingController c) {
    return AnimatedSmoothIndicator(
      activeIndex: c.currentIndexOnBoardingPage,
      count: c.onBoardingImages.length,
      effect: const WormEffect(
        activeDotColor: ColorsManager.primaryColor,
      ),
    );
  }
}

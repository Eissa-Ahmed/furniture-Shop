import 'package:e_commerce_2022/E_Commerce/Controller/OnBoardingController/onBoardingController.dart';
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
                onPageChanged: (i) {
                  controller.changeCurrentIndiactor(i);
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.all(20),
                        width: double.infinity,
                        height: 330,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(controller.onBoardingImages[i]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        controller.onBoardingStrings[i],
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
                itemCount: controller.onBoardingImages.length,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GetBuilder(
              init: OnBoardingController(),
              builder: (c) => AnimatedSmoothIndicator(
                activeIndex: c.currentIndexOnBoardingPage,
                count: c.onBoardingImages.length,
                effect: const WormEffect(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

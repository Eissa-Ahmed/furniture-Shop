import 'package:e_commerce_2022/E_Commerce/Controller/OnBoardingController/onBoardingController.dart';
import 'package:flutter/material.dart';

class ItemOnBoarding extends StatelessWidget {
  const ItemOnBoarding({
    Key? key,
    required this.controller,
    required this.i,
  }) : super(key: key);

  final OnBoardingController controller;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
  }
}

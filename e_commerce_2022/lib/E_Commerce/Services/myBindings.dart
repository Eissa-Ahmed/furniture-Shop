import 'package:e_commerce_2022/E_Commerce/Controller/AuthController/authController.dart';
import 'package:e_commerce_2022/E_Commerce/Controller/OnBoardingController/onBoardingController.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => OnBoardingController());
  }
}

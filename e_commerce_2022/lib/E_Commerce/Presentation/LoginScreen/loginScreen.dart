import 'package:e_commerce_2022/E_Commerce/Controller/AuthController/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginSceen extends StatelessWidget {
  LoginSceen({super.key});
  AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
    );
  }
}

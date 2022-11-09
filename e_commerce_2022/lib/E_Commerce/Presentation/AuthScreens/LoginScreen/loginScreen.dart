import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/colorsManager.dart';
import 'package:e_commerce_2022/E_Commerce/Controller/AuthController/authController.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/iconBroken.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/WidgetShare/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../WidgetShare/signWithGoogle.dart';

class LoginSceen extends StatelessWidget {
  LoginSceen({super.key});
  AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKeyLogin,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Welcome Back , Please Enter Your Details .",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 25,
                ),
                label(context, "Email :"),
                const SizedBox(
                  height: 5,
                ),
                customTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  context: context,
                  hint: "Enter Your Email !",
                  prefixIcon: const Icon(IconBroken.User),
                  validator: (val) {
                    return null;
                  },
                  textEditingController: controller.controllerLoginEmail,
                ),
                const SizedBox(
                  height: 25,
                ),
                label(context, "Password :"),
                const SizedBox(
                  height: 5,
                ),
                GetBuilder<AuthController>(
                  builder: (c) => customTextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: c.isShowPass,
                    context: context,
                    hint: "Enter Your Password !",
                    prefixIcon: const Icon(IconBroken.Password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        c.changeIconPass();
                      },
                      icon: c.iconPass,
                    ),
                    validator: (val) {
                      return null;
                    },
                    textEditingController: controller.controllerLoginPass,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GetBuilder<AuthController>(
                          builder: (c) => Checkbox(
                            value: c.isCheck,
                            onChanged: (val) {
                              c.changeIsCheck(val!);
                            },
                            activeColor: ColorsManager.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        Text(
                          "Remember For 30 Days",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password ?",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: Theme.of(context).primaryColor,
                                fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                GetBuilder<AuthController>(
                  builder: (c) => ElevatedButton(
                    onPressed: () async {
                      await controller.signIn(context);
                    },
                    child: c.isLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text("Sign In"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                signWithGoogle(context),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Don't Have An Acount ?",
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RoutesString.signUpScreen);
                      },
                      child: Text(
                        "Sign Up For Free",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text label(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .displaySmall!
          .copyWith(color: Theme.of(context).primaryColor),
    );
  }
}

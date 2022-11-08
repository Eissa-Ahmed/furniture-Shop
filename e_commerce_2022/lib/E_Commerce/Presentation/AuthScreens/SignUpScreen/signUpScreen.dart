import 'package:e_commerce_2022/E_Commerce/Controller/AuthController/authController.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/iconBroken.dart';
import 'package:e_commerce_2022/E_Commerce/Presentation/WidgetShare/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../WidgetShare/signWithGoogle.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(IconBroken.Arrow___Left_2),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKeySignUp,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Acount",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Let's Create Acount Togther.",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 25,
                ),
                label(context, "Full Name :"),
                const SizedBox(
                  height: 5,
                ),
                customTextFormField(
                  context: context,
                  hint: "Enter Your Name !",
                  prefixIcon: const Icon(IconBroken.User),
                  validator: (val) {
                    return null;
                  },
                  textEditingController: controller.controllerSignUpName,
                ),
                const SizedBox(
                  height: 25,
                ),
                label(context, "Email :"),
                const SizedBox(
                  height: 5,
                ),
                customTextFormField(
                  context: context,
                  hint: "Enter Your Email !",
                  prefixIcon: const Icon(FontAwesomeIcons.envelope),
                  validator: (val) {
                    return null;
                  },
                  textEditingController: controller.controllerSignUpEmail,
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
                    textEditingController: controller.controllerSignUpPass,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
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
                          "Already Have An Acount?",
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
                        Get.back();
                      },
                      child: Text(
                        "Sign In",
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

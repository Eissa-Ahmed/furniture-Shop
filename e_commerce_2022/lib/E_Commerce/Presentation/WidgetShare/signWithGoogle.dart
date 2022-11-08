import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:flutter/material.dart';

ElevatedButton signWithGoogle(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        elevation: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetsString.googleIcon,
          width: 30,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "SignIn With Google",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

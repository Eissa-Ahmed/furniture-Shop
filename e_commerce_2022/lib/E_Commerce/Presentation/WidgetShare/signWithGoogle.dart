import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

ElevatedButton signWithGoogle(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        elevation: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.google,
          color: Theme.of(context).primaryColor,
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

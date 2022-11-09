import 'package:flutter/material.dart';

TextFormField customTextFormField({
  required BuildContext context,
  required String? hint,
  required Widget? prefixIcon,
  Widget? suffixIcon,
  required String? Function(String?)? validator,
  required TextEditingController textEditingController,
  bool obscureText = false,
  required TextInputType keyboardType,
}) {
  return TextFormField(
    keyboardType: keyboardType,
    obscureText: obscureText,
    validator: validator,
    style: Theme.of(context)
        .textTheme
        .displaySmall!
        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
    controller: textEditingController,
    decoration: InputDecoration(
      hintText: hint!,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    ),
  );
}

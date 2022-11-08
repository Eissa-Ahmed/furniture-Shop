import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Helpers/iconBroken.dart';

class AuthController extends GetxController {
  //Variables
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();
  TextEditingController controllerLoginEmail = TextEditingController();
  TextEditingController controllerLoginPass = TextEditingController();
  TextEditingController controllerSignUpEmail = TextEditingController();
  TextEditingController controllerSignUpName = TextEditingController();
  TextEditingController controllerSignUpPass = TextEditingController();
  Widget iconPass = const Icon(IconBroken.Show);
  bool isCheck = false;
  bool isShowPass = true;

  //Funcations
  changeIsCheck(bool val) {
    isCheck = val;
    update();
  }

  changeIconPass() {
    if (isShowPass == true) {
      isShowPass = false;
      iconPass = const Icon(IconBroken.Hide);
    } else {
      isShowPass = true;
      iconPass = const Icon(IconBroken.Show);
    }
    update();
  }
}

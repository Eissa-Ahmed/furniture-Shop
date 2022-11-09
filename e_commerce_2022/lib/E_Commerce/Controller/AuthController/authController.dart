import 'package:e_commerce_2022/E_Commerce/Constant/StringManage.dart';
import 'package:e_commerce_2022/E_Commerce/Constant/dioHelper.dart';
import 'package:e_commerce_2022/E_Commerce/Helpers/cachHelper.dart';
import 'package:e_commerce_2022/E_Commerce/Model/signInModel.dart';
import 'package:e_commerce_2022/E_Commerce/Model/signUpModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Helpers/iconBroken.dart';
import '../../Presentation/WidgetShare/customSnackBar.dart';

class AuthController extends GetxController {
  //Variables
  GlobalKey<FormState> formKeyLogin = GlobalKey<FormState>();
  GlobalKey<FormState> formKeySignUp = GlobalKey<FormState>();
  TextEditingController controllerLoginEmail = TextEditingController();
  TextEditingController controllerLoginPass = TextEditingController();
  TextEditingController controllerSignUpEmail = TextEditingController();
  TextEditingController controllerSignUpName = TextEditingController();
  TextEditingController controllerSignUpPass = TextEditingController();
  TextEditingController controllerSignUpphone = TextEditingController();
  Widget iconPass = const Icon(IconBroken.Show);
  bool isCheck = false;
  bool isShowPass = true;
  bool isLoading = false;

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

  signup(BuildContext context) async {
    isLoading = true;
    update();
    SignUpModel model = SignUpModel(
      email: controllerSignUpEmail.text,
      name: controllerSignUpName.text,
      password: controllerSignUpPass.text,
      phone: controllerSignUpphone.text,
    );
    await DioHelper.postData(path: "register", data: model.toJson())
        .then((value) {
      customSnackBar2("Sign Up State", value.data["message"], context);
      isLoading = false;
      update();
      if (value.data["status"]) {
        Get.back();
      }
    }).catchError((error) {
      print("XXXXXXXXXXXXXX");
      print(error.toString());
      isLoading = false;
      update();
    });
  }

  signIn(BuildContext context) async {
    isLoading = true;
    update();
    SignInModel model = SignInModel(
      email: controllerLoginEmail.text,
      password: controllerLoginPass.text,
    );
    await DioHelper.postData(path: "login", data: model.toJson()).then((value) {
      if (value.data["status"]) {
        SignInDataModel signInDataModel = SignInDataModel.fromJson(value.data);
        if (signInDataModel.status) {
          Get.offAllNamed(RoutesString.homeScreen);
        }
        CachHelper.saveData("login", true);
      }
      isLoading = false;
      update();
      customSnackBar2("Sign In State", value.data["message"], context);
    }).catchError((error) {
      isLoading = false;
      update();
    });
  }
}


import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();
}
class SignUpControllerImp extends SignUpController{
  late TextEditingController username;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate= GlobalKey<FormState>();

  bool isShowPassword = true;

  showPassword(){
    isShowPassword = isShowPassword ==true ? false : true;
    update();
  }

  @override
  signUp() {
  if (formstate.currentState!.validate()) {
  Get.offNamed(AppRoute.verifyCodeSignUp);

  } else {}
}

@override
goToSignIn() {
  Get.offNamed(AppRoute.login);
}

@override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    phone.dispose();
    email.dispose();
    password.dispose();
    super.dispose();

  }

}


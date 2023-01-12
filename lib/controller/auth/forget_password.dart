import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  checkemail();
  goToVerifyCode();
}
class ForgetPasswordControllerImp extends ForgetPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkemail() {
  }
  @override
  goToVerifyCode() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verifyCode);
    } else {
      print("Not Valid");
    }
  }


  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();

  }



}


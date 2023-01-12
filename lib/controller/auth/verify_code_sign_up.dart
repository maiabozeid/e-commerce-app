import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  checkcode();
  goToSuccessSignUp();
}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{

  late String verifycode;


  @override
  checkcode() {
  }
  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);

  }
  @override
  void onInit() {
    super.onInit();
  }



}


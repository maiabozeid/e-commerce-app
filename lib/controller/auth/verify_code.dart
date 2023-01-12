import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  checkcode();
  goToResetPassword();
}
class VerifyCodeControllerImp extends VerifyCodeController{

  late String verifycode;


  @override
  checkcode() {
  }
  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);

  }
  @override
  void onInit() {
    super.onInit();
  }



}


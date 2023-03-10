import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  resetpassword();
  goToSuccessResetPassword();
}
class ResetPasswordControllerImp extends ResetPasswordController{
  late TextEditingController password;
  late TextEditingController repassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();



  @override
  resetpassword() {
  }
  @override
  goToSuccessResetPassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.successResetPassword);
    } else {
      print("Not Valid");
    }
  }


  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
   password.dispose();
   repassword.dispose();
    super.dispose();

  }



}


import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
login();
goToSignUp();
goToForgetPassword();


}
class LoginControllerImp extends LoginController{
  GlobalKey<FormState> formstate= GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;

  showPassword(){
    isShowPassword = isShowPassword ==true ? false : true;
    update();
  }


  @override
  login() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
      print('valid');

    }else{
      print('not valid');
    }
  }
  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signup);

  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password=TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }


  }


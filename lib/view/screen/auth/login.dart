import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/logo_auth.dart';
import '../../widget/auth/text_signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,


      body: WillPopScope(onWillPop: alertExitApp, child:
        Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            LogoAuth(),
            CustomTextTitleAuth(text: '10'.tr),
            SizedBox(
              height: 20,
            ),
            CustomTextBodyAuth(
                text: '11'.tr),
            SizedBox(
              height: 70,
            ),
            CustomTextField(
                isNumber: false,
                valid: (val){
                  return validInput(val!,5,100,'email');
                },
                hinttext: '12'.tr,
                iconData: Icons.email_outlined,
                labeltext: '18'.tr,
                mycontroller: controller.email),
            SizedBox(
              height: 10,
            ),
            GetBuilder<LoginControllerImp>(builder: (controller)=>
            CustomTextField(
              obsecureText: controller.isShowPassword,
                onTapIcon: (){
controller.showPassword();
                },
                isNumber: false,
                valid: (val){
                  return validInput(val!,5,30,'password');
                },
                hinttext: '13'.tr,
                iconData: Icons.lock_outline,
                labeltext: '19'.tr,
                mycontroller: controller.password),
            ),
            InkWell(
                onTap: () {
                  controller.goToForgetPassword();
                },
                child: Text(
                  '14'.tr,
                  textAlign: TextAlign.end,
                )),
            CustomButtonAuth(
              text: '15'.tr,
              onPressed: () {
controller.login();
              },
            ),
            SizedBox(
              height: 40,
            ),
            TextSignUpOrSignIn(
              textone: '16'.tr,
              texttwo: '17'.tr,
              ontap: () {
                controller.goToSignUp();
              },
            ),
          ]),
        ),
        )),

    );
  }
}

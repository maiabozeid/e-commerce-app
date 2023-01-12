import 'package:e_comerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/forget_password.dart';
import '../../../../controller/auth/reset_password.dart';
import '../../../../controller/auth/sign_up_controller.dart';

import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_field.dart';
import '../../../widget/auth/custom_text_title_auth.dart';

import '../../../widget/auth/text_signup.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            CustomTextTitleAuth(text: '35'.tr),
            SizedBox(
              height: 10,
            ),
            CustomTextBodyAuth(text: '34'.tr),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
                isNumber: false,
                valid: (val){
                  return validInput(val!,5,30,'password');
                },
                hinttext: '34'.tr,
                iconData: Icons.password_outlined,
                labeltext: '18'.tr,
                mycontroller: controller.password),
            CustomTextField(
                isNumber: false,
                valid: (val){
                  return validInput(val!,5,30,'password');
                },
                hinttext: 'Re Enter Your Password',
                iconData: Icons.password_outlined,
                labeltext: '18'.tr,
                mycontroller: controller.repassword),
            SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              text: '33'.tr,
              onPressed: () {
                controller.goToSuccessResetPassword();
              },
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}

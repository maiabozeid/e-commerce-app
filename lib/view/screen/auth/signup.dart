import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/view/screen/auth/signup.dart';
import 'package:e_comerce/view/screen/auth/signup.dart';
import 'package:e_comerce/view/screen/auth/signup.dart';
import 'package:e_comerce/view/screen/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controller/auth/login_controller.dart';
import '../../../controller/auth/sign_up_controller.dart';

import '../../../core/functions/alert_exit_app.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_field.dart';
import '../../widget/auth/custom_text_title_auth.dart';

import '../../widget/auth/text_signup.dart';

class SignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Get.lazyPut (()=> SignUpControllerImp());
    // SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        title:Text('17'.tr,
            style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),),
      body: GetBuilder<SignUpControllerImp>(
        builder: (controller)=> WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(

                children: [

                  CustomTextTitleAuth(text:'10'.tr),
                  SizedBox(height: 20,),
                  CustomTextBodyAuth(text:'11'.tr),
                  SizedBox(height: 70,),

                  CustomTextField(
                      isNumber: false,
                      valid: (val){
                        return validInput(val!,3,20,'username');
                      },
                      hinttext: '23'.tr, iconData:Icons.person,
                      labeltext: '20'.tr,
                      mycontroller: controller.username),

                  SizedBox(height: 10,),
                  CustomTextField(
                      isNumber: true,
                      valid: (val){
                        return validInput(val!,11,11,'phone');
                      },
                      hinttext: '22'.tr, iconData:Icons.phone_android_outlined,
                      labeltext: '21'.tr,
                      mycontroller: controller.phone),

                  SizedBox(height: 10,),
                  CustomTextField(
                      isNumber: false,
                      valid: (val){
                          return validInput(val!,5,100,'email');
                      },
                      hinttext: '12'.tr, iconData:Icons.email_outlined,
                      labeltext: '18'.tr,
                      mycontroller:controller.email),

                  SizedBox(height: 10,),
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
                      hinttext: '13'.tr, iconData:Icons.lock_outline,
                      labeltext: '19'.tr,
                      mycontroller:controller.password),
            ),
                  CustomButtonAuth(
                    text: '17'.tr,
                    onPressed: () {
                      controller.signUp();
                    },
                  ),


                  SizedBox(height: 20,),
            TextSignUpOrSignIn(
              textone : '25'.tr,
              texttwo : '26'.tr, ontap: () {
              controller.goToSignIn();
            },),

                ]
            ),
          ),
      )),
        ),
    );
  }
}

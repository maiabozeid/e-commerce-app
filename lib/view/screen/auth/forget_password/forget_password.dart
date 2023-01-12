import 'package:e_comerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/forget_password.dart';
import '../../../../controller/auth/sign_up_controller.dart';

import '../../../../core/functions/valid_input.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_field.dart';
import '../../../widget/auth/custom_text_title_auth.dart';

import '../../../widget/auth/text_signup.dart';

class ForgetPassword extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        title:Text('14'.tr,
            style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(

              children: [

                CustomTextTitleAuth(text:'27'.tr),
                SizedBox(height: 10,),
                CustomTextBodyAuth(text:'Please Enter your Email Address To receive A verification Code'),
                SizedBox(height: 20,),



                SizedBox(height: 10,),
                CustomTextField(
                  isNumber: false,
                    valid: (val){
                      return validInput(val!,5,100,'email');
                    },
                    hinttext: '12'.tr, iconData:Icons.email_outlined,
                    labeltext: '18'.tr,
                    mycontroller:controller.email),




                CustomButtonAuth(text: 'Check',onPressed: (){
                  controller.goToVerifyCode();

                },),
                SizedBox(height: 20,),


              ]
          ),
        ),
      ),
    );
  }
}


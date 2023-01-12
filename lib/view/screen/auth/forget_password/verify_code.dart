import 'package:e_comerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../controller/auth/forget_password.dart';
import '../../../../controller/auth/sign_up_controller.dart';

import '../../../../controller/auth/verify_code.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_field.dart';
import '../../../widget/auth/custom_text_title_auth.dart';

import '../../../widget/auth/text_signup.dart';

class VerifyCode extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        title:Text('Verification Code',
            style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey)),),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          child: ListView(

              children: [

                CustomTextTitleAuth(text:'Check Code'),
                SizedBox(height: 10,),
                CustomTextBodyAuth(text:'Please Enter The Digit Code Sent To'),
                SizedBox(height: 20,),



                SizedBox(height: 10,),
    OtpTextField(
    fieldWidth:50.0,
    borderRadius:BorderRadius.circular(20),

    numberOfFields: 5,
    borderColor: Color(0xFF512DA8),
//set to true to show as box or false to show as dash
    showFieldAsBox: true,
//runs when a code is typed in
    onCodeChanged: (String code) {
//handle validation or checks here
    },
//runs when every textfield is filled
    onSubmit: (String verificationCode){
      controller.goToResetPassword();
    }
    ),

                SizedBox(height: 20,),


              ]
          ),
        ),

    );
  }
}



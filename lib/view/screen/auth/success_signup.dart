import 'package:e_comerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/success_signup_controller.dart';
import '../../widget/auth/custom_button_auth.dart';

class SuccessSignUp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(SuccessSignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backGround,
        elevation: 0,
        title: Text('32'.tr,
        style: Theme.of(context)
        .textTheme
        .headline1!
        .copyWith(color: AppColor.grey)),

        ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Icon(Icons.check_circle_outline,size: 200,
              color: AppColor.primaryColor,),
      ),
              Text('....'),
Container(
  width:double.infinity,
            child:CustomButtonAuth(text: '31'.tr,onPressed: (){
              controller.goToPageLogin();
            },),
),
            SizedBox(height: 30,),
          ],
        ),

      ),

    );
  }
}

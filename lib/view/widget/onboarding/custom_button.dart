import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30,top: 10),
      height: 40,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 100),
        textColor: Colors.white,
        onPressed: (){
controller.next();
        },
        color: AppColor.primaryColor,
        child:Text('8'.tr) ,
      ),
    );
  }
}

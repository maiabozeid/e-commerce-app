import 'package:flutter/material.dart';
import 'package:e_comerce/data/datasource/static/static.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controller/onboarding_controller.dart';

import '../../core/constant/color.dart';
import '../widget/onboarding/custom_button.dart';
import '../widget/onboarding/custom_slider.dart';
import '../widget/onboarding/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSilder(),
            ),
            Expanded(
              flex: 1,
              child: Column(

                children: [
                  DotController(),
                  Spacer(flex: 2,),

                  CustomButton(),
          ],
        ),
            ),
      ]


    ),
    ),
    );
  }
}

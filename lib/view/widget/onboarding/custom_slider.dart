import 'package:e_comerce/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSilder extends GetView<OnBoardingControllerImp> {


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
       controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            Text(onBoardingList[index].title!,
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold ,color: AppColor.black),),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              onBoardingList[index].image!,
              // width: 200,
              height: Get.width/1.3,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[index].body!,

                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 2,
                      fontSize: 20,
                      color: AppColor.grey),
                )),
          ],
        );
      },
    );
  }
}

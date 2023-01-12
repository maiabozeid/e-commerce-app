import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/core/constant/routes.dart';
import 'package:e_comerce/core/localization/change_locale.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/language/custom_button_lang.dart';

class Language extends GetView<LocaleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr,style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 20,),
            CustomButtonLanguage(
              textButton: 'Ar',
              onPressed: () {
                Get.toNamed(AppRoute.onBoarding);
                controller.changeLang('ar');

              },
            ),
            CustomButtonLanguage(textButton: 'En', onPressed: () {
              Get.toNamed(AppRoute.onBoarding);
              controller.changeLang('en');

            })
          ],
        ),
      ),
    );
  }
}

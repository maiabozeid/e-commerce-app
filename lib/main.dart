import 'package:e_comerce/core/services/services.dart';
import 'package:e_comerce/view/screen/auth/login.dart';
import 'package:e_comerce/view/screen/language.dart';
import 'package:e_comerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/constant/color.dart';
import 'core/localization/change_locale.dart';
import 'core/localization/translation.dart';
import 'routes.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller= Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      theme: controller.appTheme,

     getPages: routes,
    );
  }
}

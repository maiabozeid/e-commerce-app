
import 'package:e_comerce/view/screen/auth/forget_password/forget_password.dart';
import 'package:e_comerce/view/screen/auth/login.dart';
import 'package:e_comerce/view/screen/auth/forget_password/reset_password.dart';
import 'package:e_comerce/view/screen/auth/signup.dart';
import 'package:e_comerce/view/screen/auth/forget_password/success_reset_password.dart';
import 'package:e_comerce/view/screen/auth/success_signup.dart';
import 'package:e_comerce/view/screen/auth/forget_password/verify_code.dart';
import 'package:e_comerce/view/screen/auth/verify_signup.dart';
import 'package:e_comerce/view/screen/language.dart';
import 'package:e_comerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'controller/auth/verify_code_sign_up.dart';
import 'core/constant/routes.dart';
import 'core/middleware/my_middleware.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => Language(),middlewares:[
    MyMiddleware(),
  ]),
  GetPage(name: AppRoute.login, page: ()=> Login()),
  GetPage(name: AppRoute.signup, page: ()=> SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: ()=> ForgetPassword()),
  GetPage(name: AppRoute.verifyCode, page: ()=> VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: ()=> ResetPassword()),
  GetPage(name: AppRoute.successResetPassword, page: ()=>SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: ()=> SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () =>  OnBoarding()),
  GetPage(name: AppRoute.verifyCodeSignUp, page: ()=> SignUpVerification()),
];




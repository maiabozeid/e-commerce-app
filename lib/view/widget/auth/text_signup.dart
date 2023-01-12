import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class TextSignUpOrSignIn extends StatelessWidget {
final String textone;
final String texttwo;
final void Function()? ontap;

TextSignUpOrSignIn({required this.textone,required this.texttwo, required this.ontap});

@override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),

    InkWell(
    onTap: ontap,
    child: Text(texttwo,style: TextStyle(fontWeight: FontWeight.bold,
    color: AppColor.primaryColor),),),
  ]
    );
  }
}

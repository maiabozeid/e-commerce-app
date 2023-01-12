import 'package:e_comerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
final String text;
final void Function()? onPressed;

CustomButtonAuth({required this.text,required this.onPressed});

@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
      child: MaterialButton(
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,child: Text(text,),
        color: AppColor.primaryColor,
        textColor: Colors.white,
      ),
    );
  }
}

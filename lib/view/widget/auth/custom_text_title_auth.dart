import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
final String text;


CustomTextTitleAuth({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),
    );
  }
}

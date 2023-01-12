import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;

  CustomTextBodyAuth({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Text(text,
        textAlign: TextAlign.center,


        style: TextStyle(color: Colors.grey),

      ),
    );
  }
}

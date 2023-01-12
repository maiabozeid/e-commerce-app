import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
final bool? obsecureText;
 final void Function()? onTapIcon;

  CustomTextField(
      {this.obsecureText,
        this.onTapIcon,
        required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
        required this.valid,
      required this.isNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber? TextInputType.numberWithOptions(decimal: true):TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obsecureText == null || obsecureText ==false ?false : true,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          label: Container(
            margin:const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              labeltext,
            ),
          ),
          hintText: (hinttext),
          hintStyle:const TextStyle(fontSize: 14),
          suffixIcon:InkWell(child :Icon(iconData ),onTap: onTapIcon),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}

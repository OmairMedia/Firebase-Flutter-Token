import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';

// ignore: camel_case_types
class custominput extends StatelessWidget {
  final String hinttxt;
  final bool ispassword;
  final TextEditingController control;
  final TextInputType inputType;

  const custominput({
    Key? key,
    required this.hinttxt,
    required this.ispassword,
    required this.control,
    required this.inputType,
  }) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Constants.Primary, width: 0.5),
          borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        controller: control,
        keyboardType: inputType,
        obscureText: ispassword,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttxt,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 10.0,
            )),
        style: Constants.regular4,
      ),
    );
  }
}

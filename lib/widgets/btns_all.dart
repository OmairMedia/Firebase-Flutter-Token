import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final Function onpreased;
  final bool outlinebtn;

  // ignore: use_key_in_widget_constructors
  const CustomBtn({
    required this.text,
    required this.onpreased,
    required this.outlinebtn,
  });

  @override
  Widget build(BuildContext context) {
    bool _outlineBtn = outlinebtn;

    return InkWell(
      onTap: () {
        onpreased();
      },
      splashColor: Constants.Secondarylight,
      child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              color: _outlineBtn ? Colors.transparent : Constants.Primary,
              // border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(15.0)),
          margin: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 5.0,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                color: _outlineBtn ? Constants.Primary : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          )),
    );
  }
}

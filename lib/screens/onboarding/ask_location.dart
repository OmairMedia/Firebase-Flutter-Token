// ignore_for_file: prefer_const_constructors, camel_case_types, duplicate_ignore, file_names

import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/authentication/signin.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ask_location extends StatefulWidget {
  const ask_location({Key? key}) : super(key: key);

  @override
  _ask_locationState createState() => _ask_locationState();
}

class _ask_locationState extends State<ask_location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 100,
              ),
              Image.asset("assets/home1.png"),
              SizedBox(
                height: 50,
              ),
              Text(
                "Hi nice to meet you!",
               style: Constants.heading2.copyWith(color: Constants.Primary),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                "Choose you location to start finding \n your perfect logistic vender",
                style: Constants.regular3.copyWith(color: Constants.Grey),
                textAlign: TextAlign.center,
              ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(width: 2.0, color: Color(0xFF2F4D84)),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/Path.png"),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Use current location",
                              style: Constants.heading3.copyWith(color: Constants.Primary),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      side: BorderSide(width: 2.0, color: Color(0xFF2F4D84)),
                    ),
                    onPressed: () {},
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Select it manually",
                              style: Constants.heading3.copyWith(color: Constants.Primary))
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    "Skip",
                     style: Constants.heading3.copyWith(color: Constants.Primary),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

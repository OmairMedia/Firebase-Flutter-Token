import 'package:flutter/material.dart';
import 'package:meribiltyapp/screens/authentication/signin.dart';
import 'package:meribiltyapp/screens/authentication/signupcheck.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/checktile.dart';
import 'package:meribiltyapp/widgets/text_btns.dart';
import 'package:meribiltyapp/widgets/custuminput.dart';
import 'package:meribiltyapp/widgets/custominputfornum.dart';

class PasswordSet extends StatelessWidget {
  const PasswordSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController control = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/59.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.contain)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            child: SizedBox(
              width: MediaQuery.of(context).size.height / 2,
              child: Card(
                elevation: 10,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 120,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     TextBtn(
                    //         onclick: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) =>
                    //                       const SignUpCheck()));
                    //         },
                    //         txt: "Sign Up",
                    //         isslected: false),
                    //     TextBtn(
                    //         onclick: () {
                    //           Navigator.push(
                    //               context,
                    //               MaterialPageRoute(
                    //                   builder: (context) => const SignIn()));
                    //         },
                    //         txt: "Sign In",
                    //         isslected: true),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height / 120,
                    // ),
                    // Divider(
                    //   color: Colors.grey[200],
                    //   thickness: 1,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    FittedBox(
                      child: Text(
                        "Change Your Password",
                        style: Constants.heading2,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    custominput(
                        hinttxt: "Enter Your Password",
                        ispassword: true,
                        control: control,
                        inputType: TextInputType.visiblePassword),
                    custominput(
                        hinttxt: "Enter Your Confirm Password",
                        ispassword: true,
                        control: control,
                        inputType: TextInputType.visiblePassword),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    CustomBtn(
                        text: "LogIn",
                        onpreased: () {
                          //TODO: LogIn
                        },
                        outlinebtn: false),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

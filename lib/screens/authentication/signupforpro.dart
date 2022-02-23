import 'package:flutter/material.dart';
import 'package:meribiltyapp/screens/authentication/signin.dart';
import 'package:meribiltyapp/screens/authentication/signupcheck.dart';
import 'package:meribiltyapp/screens/authentication/checkotp.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/checktile.dart';
import 'package:meribiltyapp/widgets/custominputfornum.dart';
import 'package:meribiltyapp/widgets/custuminput.dart';
import 'package:meribiltyapp/widgets/text_btns.dart';

class SignUpForPro extends StatelessWidget {
  const SignUpForPro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isselected = false;
    TextEditingController control = TextEditingController();
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/group.png"),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth)),
        child: Container(
          margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3.5, bottom: 20),
          width: MediaQuery.of(context).size.height / 2,
          child: Card(
            elevation: 10,
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 120,
                  ),
                  //Top Bar Start
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextBtn(
                          onclick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpCheck()));
                          },
                          txt: "Sign Up",
                          isslected: true),
                      TextBtn(
                          onclick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
                          },
                          txt: "Sign In",
                          isslected: false),
                    ],
                  ),
                  //Top Bar End
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 120,
                  ),
                  Divider(
                    color: Colors.grey[200],
                    thickness: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 60,
                  ),
                  //Heading
                  Text(
                    "Pro Registration",
                    style: Constants.regular3,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  // Form Field Start
                  custominput(
                      inputType: TextInputType.name,
                      hinttxt: "Full Name",
                      ispassword: false,
                      control: control),
                  custominputfornumber(
                      hinttxt: "Mobile Number", control: control),
                  custominput(
                      inputType: TextInputType.emailAddress,
                      hinttxt: "Email",
                      ispassword: false,
                      control: control),
                  custominput(
                      inputType: TextInputType.none,
                      hinttxt: "Password",
                      ispassword: true,
                      control: control),
                  custominput(
                      inputType: TextInputType.visiblePassword,
                      hinttxt: "Confirm Password",
                      ispassword: true,
                      control: control),
                  // Form Field End

                  SizedBox(
                    height: MediaQuery.of(context).size.height / 100,
                  ),
                  CustomBtn(
                      text: "SignUp",
                      onpreased: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CheckOtp(ontap: () {})));
                      },
                      outlinebtn: false)
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.only(bottom: 10),
        height: 15,
        child: Text(
          "By clicking proceed, you agree to our Terms and Conditions",
          style: Constants.regular1,
        ),
      ),
    );
  }
}

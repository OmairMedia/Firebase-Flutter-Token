import 'package:flutter/material.dart';
import 'package:meribiltyapp/screens/authentication/checkotp.dart';
import 'package:meribiltyapp/screens/authentication/passwordset.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/custominputfornum.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController Phonenumber = TextEditingController();
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
                  
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Text(
                      "Forget Password",
                      style: Constants.heading2,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    custominputfornumber(
                        control: Phonenumber,
                        hinttxt: "Enter Your Phone Number"),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),

                    CustomBtn(
                        text: "Next",
                        onpreased: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOtp(
                                        ontap: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PasswordSet()));
                                        },
                                      )));
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

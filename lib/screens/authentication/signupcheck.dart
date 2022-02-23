import 'package:flutter/material.dart';
import 'package:meribiltyapp/screens/authentication/signin.dart';
import 'package:meribiltyapp/screens/authentication/signupforuser.dart';
import 'package:meribiltyapp/screens/authentication/signupforpro.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/text_btns.dart';

class SignUpCheck extends StatelessWidget {
  const SignUpCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/group.png"),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.contain)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.9,
            child: Container(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextBtn(
                            onclick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpCheck()));
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
                    Text(
                      "Describe Your Required",
                      style: Constants.regular3.copyWith(color: Constants.Grey),
                    ),
                    Text(
                      "SignUp Requirement",
                      style: Constants.regular3.copyWith(color: Constants.Grey),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpForUser()));
                          },
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage(
                                    "assets/images/signupasdriver.png"),
                              ),
                              Text(
                                "SignUp as User",
                                style: Constants.regular3
                                    .copyWith(color: Constants.Grey),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpForPro()));
                          },
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage(
                                    "assets/images/signupasvendor.png"),
                              ),
                              Text(
                                "SignUp as Pro",
                                style: Constants.regular3
                                    .copyWith(color: Constants.Grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
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

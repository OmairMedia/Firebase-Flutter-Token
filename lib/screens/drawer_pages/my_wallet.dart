// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text(
            "My Wallet",
            style: Constants.regular4.copyWith(color: Constants.White),
          ),
          backgroundColor: Constants.Primary,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(FontAwesomeIcons.chevronLeft),
          ),
        ),
        body: ListView(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 30,
                    color: Constants.Primary,
                  ),
                  title: Text("Cash",
                      style:
                          Constants.heading3.copyWith(color: Constants.Black)),
                  subtitle: Text("Default Payment Method",
                      style:
                          Constants.regular5.copyWith(color: Constants.Grey)),
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("Balance",
                      style:
                          Constants.regular3.copyWith(color: Constants.Black)),
                  subtitle: Text("Rs.2500",
                      style: Constants.bigger1.copyWith(color: Constants.Grey)),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("My Payment Methods",
                      style:
                          Constants.regular3.copyWith(color: Constants.Black)),
                  trailing: IconButton(
                      onPressed: () => {},
                      icon: Icon(FontAwesomeIcons.chevronCircleRight,
                          color: Constants.Primary, size: 20)),
                ))
          ],
        )
      );
  }
}

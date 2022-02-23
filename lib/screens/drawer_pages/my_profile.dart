import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Profile",
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
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Constants.Primary,
                    ),
                    TextButton(
                        onPressed: () => {},
                        child: Text(
                          "Upload Profile Image",
                          style: Constants.regular5
                              .copyWith(color: Constants.Primary),
                        ))
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("Account Type",
                      style:
                          Constants.heading4.copyWith(color: Constants.Black)),
                  trailing: Text("User",
                      style:
                          Constants.regular4.copyWith(color: Constants.Grey)),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("Phone",
                      style:
                          Constants.heading4.copyWith(color: Constants.Black)),
                  subtitle: Text("You cannot change your phone number.",
                      style:
                          Constants.regular6.copyWith(color: Constants.Grey)),
                  trailing: Text("+92332432547",
                      style:
                          Constants.regular4.copyWith(color: Constants.Grey)),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("Username",
                      style:
                          Constants.heading4.copyWith(color: Constants.Black)),
                  trailing: Text("M.Omair",
                      style:
                          Constants.regular4.copyWith(color: Constants.Grey)),
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Constants.White,
                ),
                width: MediaQuery.of(context).size.width,
                // height: 300,
                child: ListTile(
                  title: Text("Email",
                      style:
                          Constants.heading4.copyWith(color: Constants.Black)),
                  trailing: Text("omair@4slash.com",
                      style:
                          Constants.regular4.copyWith(color: Constants.Grey)),
                )),
          ],
        )
    );
  }
}

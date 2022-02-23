import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
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
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Constants.White,
              ),
              width: MediaQuery.of(context).size.width,
              // height: 300,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Constants.Primary,
                  radius: 40,
                ),
                title: Text("M.Omair",
                    style: Constants.heading4.copyWith(color: Constants.Black)),
                subtitle: Text("User",
                    style: Constants.regular5.copyWith(color: Constants.Grey)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Notifications",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Security",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Language",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Clear Cache",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Terms & Conditions",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
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
                title: Text("Contact Us",
                    style: Constants.regular5.copyWith(color: Constants.Black)),
                trailing: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 20,
                      color: Constants.Grey,
                    )),
              )),
        ],
      ),
    );
  }
}

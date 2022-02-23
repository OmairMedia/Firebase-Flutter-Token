import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class MyNotifications extends StatefulWidget {
  const MyNotifications({Key? key}) : super(key: key);

  @override
  _MyNotificationsState createState() => _MyNotificationsState();
}

class _MyNotificationsState extends State<MyNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Notifications",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton.icon(
                      onPressed: () => {},
                      icon: Icon(
                        FontAwesomeIcons.trash,
                        color: Constants.Primary,
                        size: 15,
                      ),
                      label: Text(
                        "Clear All",
                        style: Constants.regular5
                            .copyWith(color: Constants.Primary),
                      ))
                ],
              )),
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
                leading: Icon(
                  FontAwesomeIcons.steamSymbol,
                  size: 30,
                  color: Constants.Primary,
                ),
                title: Text("System",
                    style: Constants.heading4.copyWith(color: Constants.Black)),
                subtitle: Text(
                    "Your Order#0007 has been successfully delivered to you",
                    style: Constants.regular5.copyWith(color: Constants.Grey)),
              )),
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
                leading: Icon(
                  FontAwesomeIcons.steamSymbol,
                  size: 30,
                  color: Constants.Primary,
                ),
                title: Text("System",
                    style: Constants.heading4.copyWith(color: Constants.Black)),
                subtitle: Text(
                    "Your Order#0007 has been successfully delivered to you",
                    style: Constants.regular5.copyWith(color: Constants.Grey)),
              )),
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
                leading: Icon(
                  FontAwesomeIcons.steamSymbol,
                  size: 30,
                  color: Constants.Primary,
                ),
                title: Text("System",
                    style: Constants.heading4.copyWith(color: Constants.Black)),
                subtitle: Text(
                    "Your Order#0007 has been successfully delivered to you",
                    style: Constants.regular5.copyWith(color: Constants.Grey)),
              )),
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
                leading: Icon(
                  FontAwesomeIcons.steamSymbol,
                  size: 30,
                  color: Constants.Primary,
                ),
                title: Text("System",
                    style: Constants.heading4.copyWith(color: Constants.Black)),
                subtitle: Text(
                    "Your Order#0007 has been successfully delivered to you",
                    style: Constants.regular5.copyWith(color: Constants.Grey)),
              )),
        ],
      ),
    );
  }
}

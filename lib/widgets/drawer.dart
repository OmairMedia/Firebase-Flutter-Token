import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/screens/authentication/signin.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/drawer_pages/chat.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_notifications.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_profile.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_team.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_wallet.dart';
import 'package:meribiltyapp/screens/drawer_pages/settings.dart';
import 'package:meribiltyapp/screens/home/home.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/screens/ppl/bussiness_pro_form.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.Primary,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AvatarImage(imageurl: "assets/images/Avatar.png"),
            Text(
              "KK Transport",
              style: Constants.heading3.copyWith(color: Constants.White),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                  decoration: BoxDecoration(
                      color: Constants.White,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Text(
                        "CASH",
                        style: Constants.regular1.copyWith(fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text("100PKR", style: Constants.heading3),
                      ),
                      Icon(FontAwesomeIcons.chevronRight, size: 12),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      FontAwesomeIcons.bell,
                      color: Constants.White,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.comment,
                      color: Constants.White,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}

class AvatarImage extends StatefulWidget {
  String imageurl;
  AvatarImage({Key? key, required this.imageurl}) : super(key: key);

  @override
  State<AvatarImage> createState() => _AvatarImageState();
}

class _AvatarImageState extends State<AvatarImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(widget.imageurl),
                fit: BoxFit.contain,
                scale: 1.0),
          ),
        ),
      ),
    );
  }
}

class CustomDrawerBody extends StatelessWidget {
  const CustomDrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTileforDrawer(
              icon: FontAwesomeIcons.home,
              txt: "Home",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.briefcase,
              txt: "My Profile",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyProfile()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.briefcase,
              txt: "My Deliveries",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyDeliveries()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.wallet,
              txt: "My Wallet",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyWallet()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.wallet,
              txt: "My Team",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyTeam()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.comment,
              txt: "Chat",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chat()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.bell,
              txt: "Notification",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyNotifications()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.cog,
              txt: "Setting",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.signOutAlt,
              txt: "Log Out",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
            ),
            ListTileforDrawer(
              icon: FontAwesomeIcons.upload,
              txt: "Upgrade",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProBussinessForm()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListTileforDrawer extends StatelessWidget {
  String txt;
  IconData icon;
  Function onTap;
  ListTileforDrawer(
      {Key? key, required this.icon, required this.txt, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Icon(icon, color: Constants.Grey),
            SizedBox(
              width: 15,
            ),
            Text(txt,
                style: Constants.regular4.copyWith(color: Constants.Black))
          ],
        ),
      ),
    );
  }
}

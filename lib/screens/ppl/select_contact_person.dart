import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/screens/ppl/invite_contact_person.dart';

class SelectContactPerson extends StatefulWidget {
  const SelectContactPerson({Key? key}) : super(key: key);

  @override
  _SelectContactPersonState createState() => _SelectContactPersonState();
}

class _SelectContactPersonState extends State<SelectContactPerson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Payment Method",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                // side: BorderSide(color: Constants.Primary, width: 1),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "Select Contact Person Or \nClearing Agents",
                      style:
                          Constants.heading4.copyWith(color: Constants.Black),
                      textAlign: TextAlign.center,
                    ),
                    ListTile(
                      onTap: () => {invitedUsersListModel(context)},
                      title: Text(
                        'Select From Existing List',
                        style: Constants.heading3
                            .copyWith(color: Constants.Primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InviteContactPerson()))
                      },
                      title: Text(
                        'Invite New',
                        style: Constants.heading3
                            .copyWith(color: Constants.Primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyDeliveries()))
                      },
                      title: Text(
                        'I Will Manage Myself',
                        style: Constants.heading3
                            .copyWith(color: Constants.Primary),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

// Invited Users List

void invitedUsersListModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(),
            child: Column(
              children: [
                Text(
                  "Team Members",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center,
                ),
                ListTile(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyDeliveries()))
                  },
                  title: Text(
                    "Ashfaq Alam",
                    style: Constants.regular3.copyWith(color: Constants.Black),
                  ),
                  subtitle: Text(
                    "03223254454",
                    style: Constants.regular4.copyWith(color: Constants.Black),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Constants.Primary,
                    radius: 30,
                  ),
                ),
                ListTile(
                  onTap: () => {},
                  title: Text(
                    "Ashfaq Alam",
                    style: Constants.regular3.copyWith(color: Constants.Black),
                  ),
                  subtitle: Text(
                    "03223254454",
                    style: Constants.regular4.copyWith(color: Constants.Black),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Constants.Primary,
                    radius: 30,
                  ),
                ),
                ListTile(
                  onTap: () => {},
                  title: Text(
                    "Ashfaq Alam",
                    style: Constants.regular3.copyWith(color: Constants.Black),
                  ),
                  subtitle: Text(
                    "03223254454",
                    style: Constants.regular4.copyWith(color: Constants.Black),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Constants.Primary,
                    radius: 30,
                  ),
                ),
                ListTile(
                  onTap: () => {},
                  title: Text(
                    "Ashfaq Alam",
                    style: Constants.regular3.copyWith(color: Constants.Black),
                  ),
                  subtitle: Text(
                    "03223254454",
                    style: Constants.regular4.copyWith(color: Constants.Black),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Constants.Primary,
                    radius: 30,
                  ),
                )
              ],
            ),
          ),
        );
      });
}

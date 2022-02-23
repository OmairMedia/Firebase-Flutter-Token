import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/custuminput.dart';
import 'package:meribiltyapp/widgets/drawer.dart';

class ProBussinessForm extends StatefulWidget {
  const ProBussinessForm({Key? key}) : super(key: key);

  @override
  _ProBussinessFormState createState() => _ProBussinessFormState();
}

class _ProBussinessFormState extends State<ProBussinessForm> {
  TextEditingController fullName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController bussinessName = TextEditingController();
  TextEditingController bussinessAddress = TextEditingController();
  TextEditingController ntn = TextEditingController();
  TextEditingController landline = TextEditingController();
  TextEditingController status = TextEditingController();
  TextEditingController pointOfContact = TextEditingController();
  TextEditingController cargoPerMonth = TextEditingController();
  TextEditingController daysOfCredit = TextEditingController();
  TextEditingController perMonthCredit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Text(
            "Bussiness Pro",
            style: Constants.heading2.copyWith(color: Constants.White),
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
        drawer: Drawer(
          elevation: 5,
          child: SingleChildScrollView(
            child: Column(
              children: const [CustomDrawerHeader(), CustomDrawerBody()],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Column(
                children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'I would like to apply to become a business pro and i agree to provide accurate business information',
                      style:
                          Constants.regular5.copyWith(color: Constants.Black),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  custominput(
                      hinttxt: "Fullname",
                      ispassword: false,
                      control: fullName,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "Mobile Phone",
                      ispassword: false,
                      control: phone,
                      inputType: TextInputType.phone),
                  custominput(
                      hinttxt: "Email",
                      ispassword: false,
                      control: email,
                      inputType: TextInputType.emailAddress),
                  custominput(
                      hinttxt: "Bussiness Name",
                      ispassword: false,
                      control: bussinessName,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "Bussiness Address",
                      ispassword: false,
                      control: bussinessAddress,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "NTN Number",
                      ispassword: false,
                      control: ntn,
                      inputType: TextInputType.number),
                  custominput(
                      hinttxt: "Land Line Number",
                      ispassword: false,
                      control: landline,
                      inputType: TextInputType.number),
                  custominput(
                      hinttxt: "Are You Owner Or Team Member (Checkbox)",
                      ispassword: false,
                      control: status,
                      inputType: TextInputType.number),
                  custominput(
                      hinttxt: "Point Of Contact",
                      ispassword: false,
                      control: pointOfContact,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "Volume Of Cargo Per Month",
                      ispassword: false,
                      control: cargoPerMonth,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "How many days of credit you need ?",
                      ispassword: false,
                      control: daysOfCredit,
                      inputType: TextInputType.text),
                  custominput(
                      hinttxt: "Per month credit requirement ?",
                      ispassword: false,
                      control: perMonthCredit,
                      inputType: TextInputType.text),
                  CustomBtn(
                      text: "Send Application",
                      onpreased: () {
                        Navigator.of(context).pop();
                      },
                      outlinebtn: false)
                ],
              ),
            )),
          ),
        ));
  }
}

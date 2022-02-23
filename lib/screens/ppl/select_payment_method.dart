import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/ppl/select_contact_person.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';

class SelectPaymentMethod extends StatefulWidget {
  const SelectPaymentMethod({Key? key}) : super(key: key);

  @override
  _SelectPaymentMethodState createState() => _SelectPaymentMethodState();
}

class _SelectPaymentMethodState extends State<SelectPaymentMethod> {
  TextEditingController cardNo = TextEditingController();
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Constants.Primary, width: 1),
                ),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => {selectBankTransferModel(context)},
                      leading: const Icon(FontAwesomeIcons.dollarSign),
                      title: Text('Bank Transfer',
                          style: Constants.heading3
                              .copyWith(color: Constants.Primary)),
                      subtitle: Text(
                        'You have to upload transfer slip to proceed',
                        style:
                            Constants.regular4.copyWith(color: Constants.Grey),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Constants.Primary, width: 1),
                ),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => {notEligibleForCreditPro(context)},
                      leading: const Icon(FontAwesomeIcons.dollarSign),
                      title: Text('Credit Pro',
                          style: Constants.heading3
                              .copyWith(color: Constants.Primary)),
                      subtitle: Text(
                        'Upgrade To Pro and Avail It',
                        style:
                            Constants.regular4.copyWith(color: Constants.Grey),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Constants.Primary, width: 1),
                ),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectContactPerson()))
                      },
                      leading: const Icon(FontAwesomeIcons.dollarSign),
                      title: Text('Cash On Delivery',
                          style: Constants.heading3
                              .copyWith(color: Constants.Primary)),
                      subtitle: Text(
                        'Default Payment Method',
                        style:
                            Constants.regular4.copyWith(color: Constants.Grey),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Constants.Primary, width: 1),
                ),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () => {selectCreditCardModel(context)},
                      leading: const Icon(FontAwesomeIcons.dollarSign),
                      title: Text('Debit/Credit Card',
                          style: Constants.heading3
                              .copyWith(color: Constants.Primary)),
                      subtitle: Text(
                        'Pay Online With Your Card',
                        style:
                            Constants.regular4.copyWith(color: Constants.Grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

// Bottom Sheet Model For Payment Methods

void selectBankTransferModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return AnimatedContainer(
            duration: Duration(seconds: 1),
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "MERIBILTY BANK DETAILS",
                    style:
                        Constants.heading3.copyWith(color: Constants.Primary),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "MEEZAN BANK \n465465465132 \nII CHUNDRIGAR ROAD, KARACHI",
                    style: Constants.regular4.copyWith(color: Constants.Grey),
                    textAlign: TextAlign.center,
                  ),
                  TextButton(
                      onPressed: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          // File file = File(result.files.single.path);
                        } else {
                          // User canceled the picker
                        }
                      },
                      child: Text("Upload Transfer Slip")
                  ),
                    CustomBtn(
                      text: "Done", 
                      onpreased: () {
                      Navigator.of(context).pop();
                    }, 
                    outlinebtn: false
                    )
                  
                ],
              ),
            ));
      });
}

void selectCreditCardModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return SingleChildScrollView(
            child: SafeArea(
          child: Container(
              // height: MediaQuery.of(context).size.height * .40,
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Text(
                  "Pay Online",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "**** **** **** ****",
                    prefixIcon: Icon(FontAwesomeIcons.creditCard),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Expiration Date",
                    prefixIcon: Icon(FontAwesomeIcons.solidCalendar),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "CVC",
                    prefixIcon: Icon(FontAwesomeIcons.creditCard),
                  ),
                ),
                CustomBtn(
                    text: "Save & Continue",
                    onpreased: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectContactPerson()));
                    },
                    outlinebtn: false)
              ],
            ),
          )),
        ));
      });
}

void notEligibleForCreditPro(context) {
  TextEditingController amount = TextEditingController();
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return SingleChildScrollView(
          child: SafeArea(
            child: Container(
            
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(FontAwesomeIcons.solidCheckCircle,
                      size: 64, color: Constants.BrightRed),
                  Text(
                    "Upgrade To Pro !",
                    style:
                        Constants.heading2.copyWith(color: Constants.Primary),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "You are not eligible to use this payment method. Please upgrade your account and try again.",
                    style: Constants.regular4.copyWith(color: Constants.Grey),
                    textAlign: TextAlign.center,
                  ),
                  // CustomBtn(text: "Done", onpreased: () {}, outlinebtn: false)
                ],
              ),
            )
          ),
          ),
        );
      });
}

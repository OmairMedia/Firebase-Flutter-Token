import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/screens/ppl/select_payment_method.dart';
import 'package:meribiltyapp/widgets/drawer.dart';
import 'package:meribiltyapp/widgets/text_btns.dart';

class FindingBestQoute extends StatefulWidget {
  const FindingBestQoute({Key? key}) : super(key: key);

  @override
  _FindingBestQouteState createState() => _FindingBestQouteState();
}

class _FindingBestQouteState extends State<FindingBestQoute> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const MyDeliveries()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.Primary,
        elevation: 0,
        title: Text(
          "Finding Best Qoute",
          style: Constants.regular4.copyWith(color: Constants.White),
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
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            Text("Estimate Rates",
                style: Constants.heading4.copyWith(color: Constants.Primary)),
            Text("Rs 120,000 - 130,000",
                style: Constants.heading4.copyWith(color: Constants.Primary)),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                  "Based on market average for the month Rates can be higher or lower as per demand and supply",
                  textAlign: TextAlign.center,
                  style: Constants.regular4),
            ),
            Image.asset(
              "assets/icon/loading.gif",
              height: 250,
            ),
            Text(
              "10:00",
              style: Constants.heading1.copyWith(color: Constants.Primary),
            ),
            Text(
              "We are negotiating best rates for you.",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF2F4D84),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              icon: Icon(
                FontAwesomeIcons.timesCircle,
                color: Constants.BrightRed,
              ),
              label: Text(
                "Cancel",
                style: Constants.regular3.copyWith(color: Constants.BrightRed),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            
          ],
        ),
      ),
    );
  }
}

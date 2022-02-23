import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/transit/activeorder.dart';
import 'package:meribiltyapp/widgets/transit/completedorder.dart';
import 'package:meribiltyapp/widgets/transit/counterofferreceived.dart';
import 'package:meribiltyapp/widgets/transit/findingbestrates.dart';
import 'package:meribiltyapp/widgets/transit/offerrejected.dart';
import 'package:meribiltyapp/widgets/transit/partnerofferreceived.dart';
import 'package:meribiltyapp/widgets/transit/qoute_received.dart';

class MyDeliveries extends StatelessWidget {
  const MyDeliveries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "My Deliveries",
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
          child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TransitActiveOrderCard(status: "Active Order"),
                  TransitOfferReceivedCard(status: "Offer Received"),
                  TransitFindingBestRatesCard(status: "Finding Best Rates"),
                  TransitOfferRejectedCard(status: "Offer Rejected"),
                  TransitCounterOfferReceivedCard(
                      status: "Counter Offer Received"),
                  TransitPartnerOfferReceivedCard(
                      status: "Partner Counter Offer Received"),
                  TransitCompletedOrderCard(status: "Completed Order"),
                ],
              )),
        ),
      ),
    );
  }
}

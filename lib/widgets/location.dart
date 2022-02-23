import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class Custom3LocationWigets extends StatelessWidget {
  const Custom3LocationWigets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.dotCircle,
                color: Constants.Primary,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Pick Up Location",
                style: Constants.regular4,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              color: Constants.Grey,
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.mapMarkerAlt,
                color: Constants.BrightRed,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Dropoff Location",
                style: Constants.regular4,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Divider(
              color: Constants.Grey,
              thickness: 1,
            ),
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.dotCircle,
                color: Constants.Primary,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Empty Container Location",
                style: Constants.regular4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

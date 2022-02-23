import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/ppl/finding_best_qoute.dart';
import 'package:meribiltyapp/screens/ppl/select_location.dart';
import 'package:meribiltyapp/screens/ppl/select_vehicles.dart';
import 'package:meribiltyapp/widgets/animated_toggle.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/selectedbtn.dart';
import 'package:meribiltyapp/widgets/transit/cargovalue.dart';

class ChooseDetailsCard extends StatefulWidget {
  const ChooseDetailsCard({Key? key}) : super(key: key);

  @override
  _ChooseDetailsCardState createState() => _ChooseDetailsCardState();
}

class _ChooseDetailsCardState extends State<ChooseDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.96,
        decoration: BoxDecoration(
          color: Constants.White,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Transit",
                style: Constants.heading3.copyWith(color: Constants.Primary),
                textAlign: TextAlign.center,
              ),
              CargoValueSection(),
              SelectedBtn(
                  text: "Location Selected",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectLocation()));
                  },
                  outlinebtn: false),
              SelectedBtn(
                  text: "Vehicle Selected",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectVehicle()));
                  },
                  outlinebtn: false),
              CustomBtn(
                  text: "Book Now",
                  onpreased: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FindingBestQoute()))
                      },
                  outlinebtn: false)
            ],
          ),
        ),
      ),
    );

    // return Card(
    //   color: Constants.BrightRed,
    //   elevation: 10,
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       CustomBtn(
    //           text: "Select Vehicle", onpreased: () {}, outlinebtn: false),
    //       CustomBtn(
    //           text: "Select Vehicle", onpreased: () {}, outlinebtn: false)
    //     ],
    //   ),
    // );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/screens/ppl/finding_best_qoute.dart';
import 'package:meribiltyapp/screens/ppl/home.dart';
import 'package:meribiltyapp/screens/ppl/select_vehicles.dart';
import 'package:meribiltyapp/widgets/animated_toggle.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/drawer.dart';
import 'package:meribiltyapp/widgets/selectionlocation.dart';
import 'package:meribiltyapp/widgets/transit/cargovalue.dart';
import 'package:meribiltyapp/widgets/choosedetailscard.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  Completer<GoogleMapController> _GoogleMapController = Completer();

  // GoogleMapController userMap;
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
     
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                initialCameraPosition: _initialCameraPosition,
                myLocationButtonEnabled: false,
                myLocationEnabled: false,
                zoomControlsEnabled: false,
                onMapCreated: (GoogleMapController controller) {
                  _GoogleMapController.complete(controller);
                },
              ),
            ),
             Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  children: [
                   AnimatedToggle(
                      values: ['Transit', 'Upcountry'],
                      onToggleCallback: (dynamic) => {},
                      buttonColor: Constants.Primary,
                      textColor: Constants.White,
                    ),
                    SelectionLocationCard(),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomBtn(
                    text: "Proceed",
                    onpreased: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PPLHome()));
                    },
                    outlinebtn: false))
          ],
        ));
  }
}

void selectDateAndTimeModel(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return AnimatedContainer(
            duration: Duration(seconds: 1),
            height: MediaQuery.of(context).size.height * .60,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [],
              ),
            ));
      });
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/screens/ppl/finding_best_qoute.dart';
import 'package:meribiltyapp/screens/ppl/select_vehicles.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';
import 'package:meribiltyapp/widgets/drawer.dart';
import 'package:meribiltyapp/widgets/transit/cargovalue.dart';
import 'package:meribiltyapp/widgets/choosedetailscard.dart';

class PPLHome extends StatefulWidget {
  const PPLHome({Key? key}) : super(key: key);

  @override
  State<PPLHome> createState() => _PPLHomeState();
}

class _PPLHomeState extends State<PPLHome> {
  Completer<GoogleMapController> _GoogleMapController = Completer();

  // GoogleMapController userMap;
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Image(
            image: AssetImage("assets/icon/logo.png"),
            height: 40,
            fit: BoxFit.scaleDown,
          ),
          centerTitle: true,
          backgroundColor: Constants.Primary,
          elevation: 0,
          iconTheme: IconThemeData(color: Constants.White),
        ),
        drawer: Drawer(
          elevation: 5,
          child: SingleChildScrollView(
            child: Column(
              children: const [CustomDrawerHeader(), CustomDrawerBody()],
            ),
          ),
        ),
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
                bottom: 0, left: 0, right: 0, child: const ChooseDetailsCard())
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

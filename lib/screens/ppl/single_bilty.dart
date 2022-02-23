import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/screens/drawer_pages/my_deliveries.dart';
import 'package:meribiltyapp/widgets/biltystatusstepper.dart';
import 'package:meribiltyapp/widgets/checktile.dart';
import 'package:meribiltyapp/widgets/location.dart';


class SingleBilty extends StatefulWidget {
  const SingleBilty({Key? key}) : super(key: key);

  @override
  _SingleBiltyState createState() => _SingleBiltyState();
}

class _SingleBiltyState extends State<SingleBilty> {
  Completer<GoogleMapController> _GoogleMapController = Completer();

  // GoogleMapController userMap;
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
                  height: MediaQuery.of(context).size.height * .40,
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
           Container(
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height * .60,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Constants.White,
                    ),
                  child:  Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                      "BT0007",
                      style: Constants.heading2.copyWith(color: Constants.Primary),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [         
                        Column(
                          children: [
                             CircleAvatar(
                              backgroundColor: Constants.Primary,
                              radius: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Shahid Ali",
                                style: Constants.heading3
                                    .copyWith(color: Constants.Black)),
                            Text("20 Feet Container",
                                style:
                                    Constants.regular4.copyWith(color: Constants.Grey)),
                            Text("ABC-147",
                                style:
                                    Constants.regular4.copyWith(color: Constants.Grey)),
                            Text("x1 Crane 3-5 Ton",
                                style:
                                    Constants.regular4.copyWith(color: Constants.Grey)),
                            Text("x1 Lifter 2-3 Ton",
                                style:
                                    Constants.regular4.copyWith(color: Constants.Grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  color: Constants.Primary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 30),
                                  child: Text(
                                    "Rs.200,000",
                                    style: Constants.regular4
                                        .copyWith(color: Constants.White),
                                  ),
                                )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Cash On Delivery",
                                style:
                                    Constants.regular4.copyWith(color: Constants.Grey)),
                            SizedBox(
                              height: 10,
                            ),
                             ButtonBar(
                              children: [
                                IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      FontAwesomeIcons.teamspeak,
                                      size: 24,
                                      color: Constants.Primary,
                                    )),
                                IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      FontAwesomeIcons.phone,
                                      size: 24,
                                      color: Constants.Primary,
                                    )),
                                IconButton(
                                    onPressed: () => {},
                                    icon: Icon(
                                      FontAwesomeIcons.mapPin,
                                      size: 24,
                                      color: Constants.Primary,
                                    ))
                              ],
                            ),
                            TextButton.icon(
                                onPressed: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MyDeliveries()))
                                    },
                                icon: Icon(Icons.cancel_rounded,color: Constants.BrightRed),
                                label: Text("Cancel",style: Constants.regular3.copyWith(color: Constants.BrightRed)))
                          ],
                        )
                      ],
                    ),
                    BiltyStatusCheckPoints(),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical:20),
                              child: Text(
                              "Tracking & Check Points",
                              style:
                                  Constants.heading3.copyWith(color: Constants.Black),
                            ),
                            ),
                            // Order Time Check Point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.checkCircle,
                                        size: 24, color: Constants.Primary)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Order Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("09 Sep 2021 05:51 PM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Offer Receiving Time Check Point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.checkCircle,
                                        size: 24, color: Constants.Primary)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Offer Receiving Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("09 Sep 2021 06:00 PM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Offer Acceptance Time
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.checkCircle,
                                        size: 24, color: Constants.Primary)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Offer Acceptance Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("09 Sep 2021 08:21 PM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Delivery Pickup Time
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.timesCircle,
                                        size: 24, color: Constants.BrightRed)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Delivery Pickup Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("09 Sep 2021 08:40 PM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Delivery Arrival Time
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.timesCircle,
                                        size: 24, color: Constants.BrightRed)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Delivery Arrival Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("09 Sep 2021 09:30 PM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Delivery unloading time check point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.timesCircle,
                                        size: 24, color: Constants.BrightRed)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Delivery Unloading Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("10 Sep 2021 02:30 AM",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Container Return Time Check Point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(FontAwesomeIcons.timesCircle,
                                        size: 24, color: Constants.BrightRed)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Container Return Time",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text("Pending",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black))
                                  ],
                                )
                              ],
                            ),
                            // Documents Submitted Point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.checkCircle,
                                      size: 24,
                                      color: Constants.Primary,
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Document Submitted",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                  ],
                                )
                              ],
                            ),
                            // Document Pending Point
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.checkCircle,
                                      size: 24,
                                      color: Constants.Primary,
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Documents Pending",
                                        style: Constants.regular4
                                            .copyWith(color: Constants.Black)),
                                    Text(
                                        "This may delay the delivery \n& cause issues for drivers",
                                        style: Constants.regular5
                                            .copyWith(color: Constants.Grey)),
                                  ],
                                )
                              ],
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                                Card(
                                child: Padding(
                              padding:
                                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "5 Star Logistics",
                                        style: Constants.heading3
                                            .copyWith(color: Constants.Primary),
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 18,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        "4.9",
                                        style: Constants.regular2
                                            .copyWith(color: Constants.Grey),
                                      ),
                                      IconButton(
                                        onPressed: () => {},
                                        icon: Icon(
                                          FontAwesomeIcons.inbox,
                                          size: 24,
                                          color: Constants.Primary,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () => {},
                                        icon: Icon(
                                          FontAwesomeIcons.phone,
                                          size: 24,
                                          color: Constants.Primary,
                                        ),
                                      )
                                    ],
                                  ),
                                  const Custom3LocationWigets(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Distance: ",
                                            style: Constants.regular3
                                                .copyWith(color: Constants.Primary),
                                          ),
                                          Text(
                                            "2000 km",
                                            style: Constants.heading3
                                                .copyWith(color: Constants.Black),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Time: ",
                                            style: Constants.regular3
                                                .copyWith(color: Constants.Primary),
                                          ),
                                          Text(
                                            "200min",
                                            style: Constants.heading3
                                                .copyWith(color: Constants.Black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))
                             ],
                           )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                )
          ]
        ) 
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/location.dart';
import 'package:meribiltyapp/widgets/transit/subordercard.dart';

class TransitCompletedOrderCard extends StatefulWidget {
  final String status;

  const TransitCompletedOrderCard({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  _TransitCompletedOrderCardState createState() => _TransitCompletedOrderCardState();
}

class _TransitCompletedOrderCardState extends State<TransitCompletedOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constants.White,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Constants.Success, width: 1),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Constants.Success,
            ),
            child: Center(
              child: Text(
                "Completed",
                style: Constants.regular4.copyWith(color: Constants.White),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order#0001",
                      style: Constants.regular4,
                    ),
                    Text(
                      "9 Sep 2022 8:59PM",
                      style: Constants.regular4,
                    )
                  ],
                ),
                ContainerDetailblue(
                  vehicleType: "20 Feet Container",
                  quantity: "2",
                  weight: "5 Ton",
                  material: "Cement",
                ),
                SizedBox(
                  height: 10,
                ),
                ContainerDetailblue(
                  vehicleType: "40 Feet Container",
                  quantity: "1",
                  weight: "10 Ton",
                  material: "Electronics",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Distance:",
                          style: Constants.regular3,
                        ),
                        Text(
                          "2000 KM",
                          style: Constants.heading3,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Time:",
                          style: Constants.regular3,
                        ),
                        Text(
                          "200 Min",
                          style: Constants.heading3,
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Custom3LocationWigets(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Constants.Primary,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            child: Text(
                              "Transit",
                              style: Constants.regular4
                                  .copyWith(color: Constants.White),
                            ),
                          )),
                      Container(
                          decoration: BoxDecoration(
                            color: Constants.Grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            child: Text(
                              "Rs.200,000",
                              style: Constants.regular4.copyWith(color:Constants.Black),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}



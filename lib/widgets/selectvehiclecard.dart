import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';
import 'package:meribiltyapp/widgets/btns_all.dart';


class SingleVehicleSelectionCard extends StatefulWidget {
  const SingleVehicleSelectionCard({Key? key}) : super(key: key);

  @override
  _SingleVehicleSelectionCardState createState() =>
      _SingleVehicleSelectionCardState();
}

class _SingleVehicleSelectionCardState
    extends State<SingleVehicleSelectionCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Constants.White,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "20 Feet Container",
                          style: Constants.heading3,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "x2",
                          style: Constants.regular4
                              .copyWith(color: Constants.Primary),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () => {},
                        icon: Icon(
                          FontAwesomeIcons.trash,
                          size: 15,
                          color: Constants.BrightRed,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "2x Lifters 3-5 Tons",
                          style: Constants.regular4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "5 Tons",
                          style: Constants.regular4,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Electronics",
                          style: Constants.regular4,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      // IconButton(onPressed: () => {}, )
                      TextButton.icon(
                          onPressed: () => {addVehicleSelctionModel(context)},
                          icon: Icon(
                            FontAwesomeIcons.plus,
                            size: 13,
                            color: Constants.Primary,
                          ),
                          label: Text("Add More",
                              style: Constants.heading5
                                  .copyWith(color: Constants.Primary)))
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

void addVehicleSelctionModel(context) {
  String vehicleTypeDropdownValue;
  String optionDropdownValue;

  showModalBottomSheet(
      context: context,
      builder: (BuildContext buildcontext) {
        return SingleChildScrollView(
            child: SafeArea(
                child: Container(
                    child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Text("Vehicle Type",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "20 Feet Container",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "40 Feet Container",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "20 Feet Flatbed",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "40 Feet Flatbed",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Shehzore",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Mazda",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Labour",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )),
              Text("Loading/Unloading Options",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Lifter 1-3 Ton",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Lifter 3-5 Ton",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Lifter 5-7 Ton",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Crane 3-5 Ton",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Crane 5-7 Ton",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Labour",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )),
              Text("Material",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Cement",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Electronics",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Food",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Glass",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Constants.Grey,
                                  radius: 30,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "Frozen Items",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )),
              Text("Weight",
                  style: Constants.heading3.copyWith(color: Constants.Primary),
                  textAlign: TextAlign.center),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "+1 Tons",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "+1-3 Tons",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "+3-5 Tons",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  // AppLocalizations.of(context)!.access,
                                  "+5-8 Tons",
                                  style: Constants.heading4
                                      .copyWith(color: Constants.Primary),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              CustomBtn(
                  text: "Add",
                  onpreased: () {
                    Navigator.of(context).pop();
                  },
                  outlinebtn: false)
            ],
          ),
        ))));
      });
}

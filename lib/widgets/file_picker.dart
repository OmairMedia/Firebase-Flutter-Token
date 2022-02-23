import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meribiltyapp/config/constants.dart';

class FilePicker extends StatefulWidget {
  final String Txt;
  final Function OnChange;
  final Function ontap;
  final bool ispicked;
  const FilePicker(
      {Key? key,
      required this.Txt,
      required this.OnChange,
      required this.ontap,
      required this.ispicked})
      : super(key: key);

  @override
  State<FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends State<FilePicker> {
  bool isselected = false;
  @override
  void initState() {
    super.initState();
    isselected = widget.ispicked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.ontap();
        // setState(() {
        //   isselected = !isselected;
        //   widget.OnChange(isselected);
        // });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.only(left: 20, top: 10),
        duration: Duration(seconds: 3),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   height: 25,
                //   width: 40,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(15),
                //       color: (isselected) ? Constants.Primery : Constants.grey),
                //   child: Icon(
                //     FontAwesomeIcons.check,
                //     size: 18,
                //     color: Constants.White,
                //   ),
                // ),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  widget.Txt.toString(),
                  style: Constants.regular3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        bottom: BorderSide.none,
                        left: BorderSide.none,
                        right: BorderSide.none,
                        top: BorderSide.none,
                      )),
                      child: Text(
                        "Uplode",
                        style:
                            Constants.heading1.copyWith(color: Constants.Grey),
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.chevronRight,
                      size: 18,
                      color: Constants.Grey,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}

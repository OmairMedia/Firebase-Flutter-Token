import 'package:flutter/material.dart';

class GiveRating extends StatefulWidget {
  const GiveRating({Key? key}) : super(key: key);

  @override
  _GiveRatingState createState() => _GiveRatingState();
}

class _GiveRatingState extends State<GiveRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Give Ratings"),
      ),
    );
  }
}

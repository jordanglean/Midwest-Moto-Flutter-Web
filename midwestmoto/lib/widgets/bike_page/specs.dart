import 'package:flutter/material.dart';
// Local Widget Imports
import 'package:midwestmoto/widgets/bike_page/accessories.dart';

// Bike Description
class Specs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      width: 900,
      height: 400,
      margin: EdgeInsets.only(right: 10),
      color: Colors.grey.shade300,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text(
                'Accessories'.toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          //BikeAccessoriesWidget(),
        ],
      ),
    );
  }
}

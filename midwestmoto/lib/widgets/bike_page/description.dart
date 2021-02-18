import 'package:flutter/material.dart';

// Bike Description
class MotorcycleDescription extends StatelessWidget {
  final motorcycleDescription;
  MotorcycleDescription({@required this.motorcycleDescription});
  // Widget Build
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      width: 950,
      height: 400,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text(
                'Description'.toUpperCase(),
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
          Text(
            motorcycleDescription,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

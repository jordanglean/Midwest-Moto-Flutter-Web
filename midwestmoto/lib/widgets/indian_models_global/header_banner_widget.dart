import 'package:flutter/material.dart';

// Header Banner Widget
class HeaderBanner extends StatelessWidget {
  // Properties
  final year;
  final modelName;
  final smallModelDescription;
  final imageName;
  // Constructor
  HeaderBanner({
    @required this.year,
    @required this.modelName,
    @required this.smallModelDescription,
    @required this.imageName,
  });
  // Widget Build
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.black,
      child: Container(
        margin: EdgeInsets.only(top: 150, left: 400),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              Text(
                year + ' Model Year',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                modelName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// Shop Parts and Apparel
class ShopPartAndApparel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1600,
      height: 1000,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Text(
              'Shop Parts & Apparel',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

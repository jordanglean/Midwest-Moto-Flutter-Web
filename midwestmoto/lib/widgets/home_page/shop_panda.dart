import 'package:flutter/material.dart';
// Dependecies Import
// Widget Imports
import 'package:midwestmoto/widgets/home_page/shop_panda_card.dart';

// Shop Parts and Apparel
class ShopPartAndApparel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 900,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Text(
              'Shop Parts & Apparel',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShopHomeCards(),
              ShopHomeCards(),
              ShopHomeCards(),
            ],
          ),
        ],
      ),
    );
  }
}

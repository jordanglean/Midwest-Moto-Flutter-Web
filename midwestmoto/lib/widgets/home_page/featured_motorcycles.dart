import 'package:flutter/material.dart';

// Widget Imports
import 'package:midwestmoto/widgets/home_page/featured_motorcycle_card.dart';

// Featured Motorcycle Container Widget
class FeaturedMotorcycleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      height: 700,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Text(
              'Featured Motorcycles',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),

          // Spacer
          Padding(padding: EdgeInsets.all(20)),
          // Horizontal List View
          Expanded(
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
                FeaturedMotorcycleCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

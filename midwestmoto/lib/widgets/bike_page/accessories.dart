import 'package:flutter/material.dart';
// Local Widget Imports
import 'package:midwestmoto/widgets/bike_page/accessories_card.dart';

// Accessories
class BikeAccessoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          AccessoriesCard(),
        ],
      ),
    );
  }
}

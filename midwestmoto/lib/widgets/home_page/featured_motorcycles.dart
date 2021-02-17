import 'package:flutter/material.dart';
import 'package:midwestmoto/services/temp_local/local_data_set.dart';

// Widget Imports
import 'package:midwestmoto/widgets/home_page/featured_motorcycle_card.dart';
// Data Import
import 'package:midwestmoto/models/motorcycle_model.dart';

// Featured Motorcycle Container Widget
class FeaturedMotorcycleWidget extends StatelessWidget {
  // Get Data Set
  var localDataSet = LocalDataSet();

  // Widget Build
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
                ...localDataSet.motorcycleLocalDataSet.map((bike) {
                  return FeaturedMotorcycleCardWidget(
                    modelName: bike.modelName,
                    previewImage: bike.previewImage,
                    price: bike.price,
                  );
                }).toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

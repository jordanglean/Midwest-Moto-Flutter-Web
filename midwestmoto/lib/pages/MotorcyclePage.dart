import 'package:flutter/material.dart';
// Global Imports
import 'package:midwestmoto/widgets/footer.dart';
// Image 360 Import
import 'package:midwestmoto/widgets/bike_page/image_view_360.dart';
// Widget Imports
import 'package:midwestmoto/widgets/above_main_header_small_info_container.dart';
import 'package:midwestmoto/widgets/main_navegation.bar.dart';
import 'package:midwestmoto/widgets/bike_page/basic_info.dart';
import 'package:midwestmoto/widgets/bike_page/description.dart';
import 'package:midwestmoto/widgets/bike_page/specs.dart';
// Temp Data Set

// Motorcycle Page

class MotorcyclePage extends StatelessWidget {
  final motorcycleData;
  MotorcyclePage(this.motorcycleData);
  //var motorcycle = LocalDataSet();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AboveHeaderSmallContainer(),
            MainNavegationBar(),
            Row(
              children: <Widget>[
                // Image 360 View
                ImageView360Container(
                  imageList: motorcycleData.imageList,
                ),
                // Motorcycle Description
                BasicBikeInfo(
                  bikeBrandName: motorcycleData.brandName,
                  bikeModelName: motorcycleData.modelName,
                  bikeRegYear: motorcycleData.regYear,
                  bikeOwners: motorcycleData.numberOfOwners,
                  bikeColor: motorcycleData.colour,
                  bikeMiles: motorcycleData.totalMiles,
                ),
              ],
            ),
            // Motorcycle Description
            Container(
              margin: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  MotorcycleDescription(
                    motorcycleDescription: motorcycleData.description,
                  ),
                  Spacer(),
                  Specs(),
                ],
              ),
            ),
            // Footer
            MainFooter(),
          ],
        ),
      ),
    );
  }
}

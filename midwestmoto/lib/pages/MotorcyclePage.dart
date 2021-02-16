import 'package:flutter/material.dart';
// Image 360 Import
import 'package:midwestmoto/widgets/bike_page/image_view_360.dart';
// Widget Imports
import 'package:midwestmoto/widgets/above_main_header_small_info_container.dart';
import 'package:midwestmoto/widgets/main_navegation.bar.dart';
import 'package:midwestmoto/widgets/bike_page/basic_info.dart';
// Motorcycle Page

class MotorcyclePage extends StatelessWidget {
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
                ImageView360Container(),
                // Motorcycle Description
                BasicBikeInfo(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

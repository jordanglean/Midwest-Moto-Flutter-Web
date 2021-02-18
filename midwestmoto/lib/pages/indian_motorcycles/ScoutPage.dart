import 'package:flutter/material.dart';
import 'package:midwestmoto/widgets/indian_models_global/model_card.dart';
// Global Imports
import 'package:midwestmoto/widgets/main_navegation.bar.dart';
import 'package:midwestmoto/widgets/indian_models_global/header_banner_widget.dart';

// Scout Motorcycle Page
class ScoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MainNavegationBar(),
            HeaderBanner(
              imageName: 'null',
              modelName: 'Scout',
              smallModelDescription: 'New',
              year: '2021',
            ),
            Text(
              'Data: 0',
              style: TextStyle(color: Colors.black),
            ),
            // Bike Display List
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ModelCard(
                    bikeName: 'Scout',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

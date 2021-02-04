import 'package:flutter/material.dart';

// Home Page Banner
class HomePageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home_page/bg.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, left: 10, right: 10),
          margin: EdgeInsets.only(top: 200.0, left: 1000.0),
          width: 400,
          height: 100,
          color: Colors.white,
          child: Text(
            'Experiance the new Indian FTR'.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(left: 1100, top: 300),
          width: 200,
          height: 50,
          color: Colors.black,
          child: Text(
            'EXPLORE MODELS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

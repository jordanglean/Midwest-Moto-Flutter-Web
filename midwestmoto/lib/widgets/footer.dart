import 'package:flutter/material.dart';

// Footer
class MainFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.black,
      width: double.infinity,
      height: 700,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Image.network(
                '//cdn.shopify.com/s/files/1/0403/0336/2215/files/MWM_WINGS_LOGO_Indian_Red-1-removebg_150x.png?v=1591694781'),
          ),
          Divider(
            color: Colors.white,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Costumer Support'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: <Widget>[
                    Text(
                      'About Us'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 5,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

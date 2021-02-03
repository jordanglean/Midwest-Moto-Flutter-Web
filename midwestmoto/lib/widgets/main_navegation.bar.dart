import 'package:flutter/material.dart';

// Main Navegation Bar
class MainNavegationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
        left: 30.0,
        right: 30.0,
      ),
      height: 80.0,
      width: (MediaQuery.of(context).size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Left Nav Items
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Indian Motorcycles'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(18.0)),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Online Shop'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
          // Center Logo
          Image.network(
              '//cdn.shopify.com/s/files/1/0403/0336/2215/files/MWM_WINGS_LOGO_Indian_Red-1-removebg_150x.png?v=1591694781'),
          // Right Nav Items
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Servicing'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(18.0)),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Offers'.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.all(18.0)),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Contact Us'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}

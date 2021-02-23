import 'package:flutter/material.dart';

// See Offer Mobile Widget
class SeeOfferMobileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Ready to ride? Let us sweeten the deal.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          ButtonTheme(
            minWidth: 600,
            height: 50,
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {},
              child: Text(
                'See Available Offers'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

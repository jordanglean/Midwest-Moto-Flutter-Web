import 'package:flutter/material.dart';

// See Offer Banner Widget
class SeeOfferWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      color: Colors.black,
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Ready to Ride? Let us sweeten the deal.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
          ButtonTheme(
            height: 65,
            minWidth: 120,
            buttonColor: Colors.white,
            child: RaisedButton(
              onPressed: () {},
              child: Text(
                'SEE AVAILABLE OFFERS',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

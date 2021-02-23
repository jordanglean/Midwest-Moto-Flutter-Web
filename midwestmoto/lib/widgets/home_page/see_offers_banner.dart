import 'package:flutter/material.dart';

// See Offer Banner Widget
class SeeOfferWidget extends StatelessWidget {
  // Properties
  final double textFont;
  final double containerMargin;
  final double buttonWidth;
  // Constructor
  SeeOfferWidget({
    @required this.containerMargin,
    @required this.textFont,
    @required this.buttonWidth,
  });
  // Widget Build
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
              fontSize: textFont,
            ),
          ),
          ButtonTheme(
            height: 65,
            minWidth: buttonWidth,
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

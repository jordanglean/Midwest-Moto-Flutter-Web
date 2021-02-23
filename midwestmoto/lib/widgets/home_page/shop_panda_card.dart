import 'package:flutter/material.dart';

// Shop and Apparel Card=
class ShopHomeCards extends StatelessWidget {
  // Properties
  final cardTitle;
  final cardDescription;
  final imageLinkTemp;
  final cardWidth;
  final cardHeight;

  ShopHomeCards(
      {@required this.cardTitle,
      @required this.cardDescription,
      @required this.imageLinkTemp,
      @required this.cardWidth,
      @required this.cardHeight});

  // Widget Build
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 3,
            blurRadius: 10,
            //offset: Offset(0, 2),
          )
        ],
      ),
      width: cardWidth,
      height: cardHeight,
      child: Column(
        children: <Widget>[
          Image.network(imageLinkTemp),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  cardTitle.toUpperCase(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cardDescription,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          ButtonTheme(
            minWidth: double.infinity,
            height: 60,
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {},
              child: Text(
                "Shop $cardTitle",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

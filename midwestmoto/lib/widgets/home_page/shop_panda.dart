import 'package:flutter/material.dart';
// Dependecies Import
// Widget Imports
import 'package:midwestmoto/widgets/home_page/shop_panda_card.dart';

// Shop Parts and Apparel
class ShopPartAndApparel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 900,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Text(
              'Shop Parts & Apparel',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ShopHomeCards(
                cardTitle: "Men's Apparel",
                cardDescription: 'Description',
                imageLinkTemp:
                    'https://www.harley-davidson.com/content/dam/h-d/images/promo-images/2021/1x1/mens-apparel-1x1.jpg?impolicy=myresize&rw=650',
                cardWidth: 500,
                cardHeight: 700,
              ),
              ShopHomeCards(
                cardTitle: "Women's Apparel",
                cardDescription: 'Description',
                imageLinkTemp:
                    'https://www.harley-davidson.com/content/dam/h-d/images/promo-images/2021/1x1/womens-apparel-1x1.jpg?impolicy=myresize&rw=650',
                cardWidth: 500,
                cardHeight: 700,
              ),
              ShopHomeCards(
                cardTitle: 'Indian Parts',
                cardDescription: 'Description',
                imageLinkTemp:
                    'https://www.harley-davidson.com/content/dam/h-d/images/promo-images/2021/1x1/parts-accessories-1x1.jpg?impolicy=myresize&rw=650',
                cardWidth: 500,
                cardHeight: 700,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

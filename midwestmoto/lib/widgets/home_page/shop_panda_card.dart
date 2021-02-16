import 'package:flutter/material.dart';

// Shop and Apparel Card=
class ShopHomeCards extends StatelessWidget {
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
      width: 500,
      height: 700,
      child: Column(
        children: <Widget>[
          Image.network(
              'https://www.harley-davidson.com/content/dam/h-d/images/promo-images/2021/1x1/mens-apparel-1x1.jpg?impolicy=myresize&rw=650'),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Text(
                  "MEN'S GEAR & APPAREL",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "The latest styles in men's riding jackets, shirts, helmets, boots for winter.",
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
                "Shop Men's",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// Brands Logo List
class BrandsLogoListWidget extends StatelessWidget {
  // List of brand images
  List<AssetImage> brandLogoImagesPath = [
    AssetImage('assets/images/home_page/brands_logo/fantic.png'),
    AssetImage('assets/images/home_page/brands_logo/bullit.png'),
    AssetImage('assets/images/home_page/brands_logo/indian-Logo.png'),
    AssetImage('assets/images/home_page/brands_logo/moto-mo.png'),
    AssetImage('assets/images/home_page/brands_logo/mutt.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white54,
      width: double.infinity,
      height: 130,
      padding: EdgeInsets.all(30),
      margin: EdgeInsets.only(top: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ...brandLogoImagesPath.map((assetImage) {
            return Container(
              child: Image(
                image: assetImage,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

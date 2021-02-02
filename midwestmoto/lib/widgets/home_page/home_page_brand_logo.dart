import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      color: Colors.white,
      width: 1600,
      height: 100,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 5),
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

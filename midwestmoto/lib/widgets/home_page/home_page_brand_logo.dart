import 'package:flutter/material.dart';

// Brands Logo List
class BrandsLogoListWidget extends StatelessWidget {
  // Is Grid View Required
  final bool isGridViewRequired;

  // Constructor
  BrandsLogoListWidget({@required this.isGridViewRequired});

  // List of brand images
  final List<AssetImage> brandLogoImagesPath = [
    AssetImage('assets/images/home_page/brands_logo/fantic.png'),
    AssetImage('assets/images/home_page/brands_logo/bullit.png'),
    AssetImage('assets/images/home_page/brands_logo/indian-Logo.png'),
    AssetImage('assets/images/home_page/brands_logo/moto-mo.png'),
    AssetImage('assets/images/home_page/brands_logo/mutt.png'),
  ];

  // Widget Build
  @override
  Widget build(BuildContext context) {
    return isGridViewRequired
        // Grid View
        ? Container(
            color: Colors.white54,
            width: double.infinity,
            height: 600,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.only(top: 0.0),
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(4.0),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: brandLogoImagesPath.map((assetImage) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: Image(
                    image: assetImage,
                  ),
                );
              }).toList(),
            ),
          )
        // No Grid View
        : Container(
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

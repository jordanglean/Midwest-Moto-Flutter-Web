import 'package:flutter/material.dart';

// Home Page Banner
class HomePageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 1600,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/home_page/bg.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}

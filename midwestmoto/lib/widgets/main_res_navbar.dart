import 'package:flutter/material.dart';

// Nav for small devices
class MainResNavBar extends StatefulWidget {
  @override
  _MainResNavBarState createState() => _MainResNavBarState();
}

class _MainResNavBarState extends State<MainResNavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: null,
      ),
      title: Image.network(
          '//cdn.shopify.com/s/files/1/0403/0336/2215/files/MWM_WINGS_LOGO_Indian_Red-1-removebg_150x.png?v=1591694781'),
    );
  }
}

import 'package:flutter/material.dart';

// Main Navegation Bar
class MainNavegationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80.0,
      width: (MediaQuery.of(context).size.width),
      child: Text(
        'Hello',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

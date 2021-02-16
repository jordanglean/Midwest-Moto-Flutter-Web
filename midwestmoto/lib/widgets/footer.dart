import 'package:flutter/material.dart';

// Footer
class MainFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 500,
      child: Column(
        children: <Widget>[
          Text(
            'Footer',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

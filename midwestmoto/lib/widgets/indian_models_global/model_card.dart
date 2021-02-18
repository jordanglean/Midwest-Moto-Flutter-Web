import 'package:flutter/material.dart';

class ModelCard extends StatelessWidget {
  // Properties
  final bikeName;

  // Constructor
  ModelCard({@required this.bikeName});

  // Widget Buils
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(
              'https://www.indianmotorcycle.media/wp_uploads/indian/2020/09/5f59f3601c29a.jpg'),
          Divider(),
          Text(bikeName),
        ],
      ),
    );
  }
}

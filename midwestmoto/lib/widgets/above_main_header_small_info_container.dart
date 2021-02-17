import 'package:flutter/material.dart';

class AboveHeaderSmallContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 200.0,
      ),
      color: Colors.black,
      height: 30,
      width: (MediaQuery.of(context).size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: Colors.white,
            size: 20,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Directions',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.phone,
            color: Colors.white,
            size: 20,
          ),
          Text(
            ' 01299 822862',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

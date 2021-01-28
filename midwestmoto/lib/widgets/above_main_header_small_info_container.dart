import 'package:flutter/material.dart';

class AboveHeaderSmallContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 200.0),
      color: Colors.black,
      height: 30,
      width: (MediaQuery.of(context).size.width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'T: 01299 822862',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

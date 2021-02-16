import 'package:flutter/material.dart';

// Basic Info Container
class BasicBikeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      width: 800,
      height: 550,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // Brand Name
          Row(
            children: [
              Text(
                'Indian Motorcycle'.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              // Model Name
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '2022 FTR 1200',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          // Action Button Group
          Container(
            padding: EdgeInsets.all(25),
            child: Row(
              children: <Widget>[
                Container(
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Request A Call Back',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'General Enquiry',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Value My P/X',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Test Ride',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          ButtonTheme(
                            minWidth: 300,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.black,
                              child: Text(
                                'Finance Quote',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(padding: EdgeInsets.all(20)),
                // Bike Details
                Container(
                  height: 200,
                  width: 300,
                  child: Card(
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(Icons.motorcycle),
                          Text(
                            '140 Miles',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.date_range,
                          ),
                          Text(
                            '2021',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.verified_user_rounded),
                          Text(
                            '2 Owners',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:midwestmoto/pages/MotorcyclePage.dart';

// Featured Motorcycle Widget Card
class FeaturedMotorcycleCardWidget extends StatelessWidget {
  // Properties
  final AssetImage previewImage;
  final String modelName;
  final double price;
  // Constructor
  FeaturedMotorcycleCardWidget({
    @required this.previewImage,
    @required this.modelName,
    @required this.price,
  });

  // Widget Build
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 3,
            blurRadius: 10,
            //offset: Offset(0, 2),
          )
        ],
      ),
      width: 400,
      height: 800,
      child: Column(
        children: <Widget>[
          Image(
            image: previewImage,
          ),
          Divider(
            color: Colors.black38,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      modelName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.two_wheeler_outlined),
                        Text(' 123'),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Icon(Icons.motorcycle_outlined),
                        Text(' Naked Scrambler'),
                      ],
                    ),
                  ],
                )),
          ),
          Spacer(),
          Center(
            child: Text(
              '£' + price.toString(),
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Container(
            color: Colors.black,
            width: double.infinity,
            height: 80,
            child: FlatButton(
              child: Text(
                'VIEW BIKE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MotorcyclePage();
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

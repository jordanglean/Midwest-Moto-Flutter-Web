import 'package:flutter/material.dart';

// Our Story Widget
class OurStoryWidget extends StatelessWidget {
  // Our Story Text One
  String _ourStoryTextOne =
      '''Midwest Moto is the first new mainstream motorcycle dealership to open in Worcestershire for decades – and the only one with a background of automotive and mechanical engineering and design stretching back over 30 years. We are proud to have built a great dealership run by skilled enthusiasts which has also become a popular focal point for fellow bike lovers. ''';

  // Images List
  List<AssetImage> _ourStoryContainerImagePath = [
    AssetImage('assets/images/home_page/our_story.jpg'),
  ];

  // Widget Build
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1600,
        child: Column(
          children: <Widget>[
            OurStoryContainerWidget(
              ourStoryTextOne: _ourStoryTextOne,
              contentImage: _ourStoryContainerImagePath[0],
              contentDirection: true,
            ),
          ],
        ));
  }
}

// Our Story Container Widget Extarcted
class OurStoryContainerWidget extends StatelessWidget {
  const OurStoryContainerWidget({
    Key key,
    @required String ourStoryTextOne,
    @required AssetImage contentImage,
    @required bool contentDirection,
  })  : _ourStoryTextOne = ourStoryTextOne,
        _contentDirection = contentDirection,
        _contentImage = contentImage,
        super(key: key);

  final String _ourStoryTextOne;
  final bool _contentDirection;
  final AssetImage _contentImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: _contentDirection
          ? ContentDirectionRigh(
              contentImage: _contentImage, ourStoryTextOne: _ourStoryTextOne)
          : ContentDirectionRigh(
              contentImage: _contentImage, ourStoryTextOne: _ourStoryTextOne),
    );
  }
}

class ContentDirectionRigh extends StatelessWidget {
  const ContentDirectionRigh({
    Key key,
    @required AssetImage contentImage,
    @required String ourStoryTextOne,
  })  : _contentImage = contentImage,
        _ourStoryTextOne = ourStoryTextOne,
        super(key: key);

  final AssetImage _contentImage;
  final String _ourStoryTextOne;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image(
          image: _contentImage,
          width: 800,
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Container(
          width: 560,
          child: Column(
            children: <Widget>[
              Text(
                'Our Story',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
                textAlign: TextAlign.start,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                _ourStoryTextOne,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: ButtonTheme(
                  buttonColor: Colors.black,
                  height: 50,
                  minWidth: 200,
                  child: RaisedButton(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Learn More',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

// Our Story Widget
class OurStoryWidget extends StatelessWidget {
  // Row Required
  final bool isMobile;
  // Our Story Text One
  final String _ourStoryTextOne =
      '''Midwest Moto is the first new mainstream motorcycle dealership to open in Worcestershire for decades – and the only one with a background of automotive and mechanical engineering and design stretching back over 30 years. We are proud to have built a great dealership run by skilled enthusiasts which has also become a popular focal point for fellow bike lovers. ''';
  // Join Riders Group Text
  final String _joinOurRidersGroupText =
      'Midwest Moto is a lifestyle destination dealership and cafe. It’s the perfect meeting place for petrol heads with a taste for real coffee, homemade cake, gourmet American-style burgers and big breakfasts. Test ride the latest motorcycles along the sweeping curves through Worcestershire’s rolling hills. We also stock a full range of apparel and accessories, helmets, boots and man cave stuff.';

  // Images List
  final List<AssetImage> _ourStoryContainerImagePath = [
    AssetImage('assets/images/home_page/bg3.jpeg'),
    AssetImage('assets/images/home_page/bg4.jpg'),
  ];

  // Constructor
  OurStoryWidget({@required this.isMobile});

  // Widget Build
  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                OurStoryContainerWidget(
                  ourStoryTextOne: _ourStoryTextOne,
                  contentImage: _ourStoryContainerImagePath[0],
                  contentDirection: true,
                  imageSize: 400,
                  mainContainerSize: double.infinity,
                ),
                OurStoryContainerWidget(
                  ourStoryTextOne: _joinOurRidersGroupText,
                  contentImage: _ourStoryContainerImagePath[1],
                  contentDirection: false,
                  imageSize: 400,
                  mainContainerSize: double.infinity,
                ),
              ],
            ),
          )
        : Container(
            width: 1600,
            child: Column(
              children: <Widget>[
                OurStoryContainerWidget(
                  ourStoryTextOne: _ourStoryTextOne,
                  contentImage: _ourStoryContainerImagePath[0],
                  contentDirection: true,
                  imageSize: 800,
                  mainContainerSize: 560,
                ),
                OurStoryContainerWidget(
                  ourStoryTextOne: _joinOurRidersGroupText,
                  contentImage: _ourStoryContainerImagePath[1],
                  contentDirection: false,
                  imageSize: 800,
                  mainContainerSize: 560,
                ),
              ],
            ));
  }
}

// Our Story Container Widget Extarcted
class OurStoryContainerWidget extends StatelessWidget {
  const OurStoryContainerWidget(
      {Key key,
      @required String ourStoryTextOne,
      @required AssetImage contentImage,
      @required bool contentDirection,
      @required mainContainerSize,
      @required int imageSize})
      : _ourStoryTextOne = ourStoryTextOne,
        _contentDirection = contentDirection,
        _contentImage = contentImage,
        _imageSize = imageSize,
        _mainContainerSize = mainContainerSize,
        super(key: key);

  final String _ourStoryTextOne;
  final bool _contentDirection; // True shows image left and text right
  final AssetImage _contentImage;
  final _imageSize;
  final _mainContainerSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: _contentDirection
          ? ContentDirectionRigh(
              contentImage: _contentImage,
              ourStoryTextOne: _ourStoryTextOne,
              contentHeaderTitle: 'Our Story',
              imageSize: _imageSize,
              mainContainerSize: _mainContainerSize,
            )
          : ContentDirectionLeft(
              contentImage: _contentImage,
              ourStoryTextOne: _ourStoryTextOne,
              contentHeaderTitle: 'Join Our Riders Group',
            ),
    );
  }
}

// Display content -> image first and text after
class ContentDirectionRigh extends StatelessWidget {
  const ContentDirectionRigh({
    Key key,
    @required AssetImage contentImage,
    @required String ourStoryTextOne,
    @required String contentHeaderTitle,
    @required int imageSize,
    @required mainContainerSize,
  })  : _contentImage = contentImage,
        _ourStoryTextOne = ourStoryTextOne,
        _contentHeaderTitle = contentHeaderTitle,
        _imageSize = imageSize,
        _mainContainerSize = mainContainerSize,
        super(key: key);

  final AssetImage _contentImage;
  final String _contentHeaderTitle;
  final String _ourStoryTextOne;
  final _imageSize;
  final _mainContainerSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image(
          image: _contentImage,
          width: _imageSize,
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Container(
          width: _mainContainerSize,
          child: Column(
            children: <Widget>[
              Text(
                _contentHeaderTitle,
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

// Display content -> Text first image second
class ContentDirectionLeft extends StatelessWidget {
  const ContentDirectionLeft({
    Key key,
    @required AssetImage contentImage,
    @required String ourStoryTextOne,
    @required String contentHeaderTitle,
  })  : _contentImage = contentImage,
        _ourStoryTextOne = ourStoryTextOne,
        _contentHeaderTitle = contentHeaderTitle,
        super(key: key);

  final AssetImage _contentImage;
  final String _contentHeaderTitle;
  final String _ourStoryTextOne;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 560,
          child: Column(
            children: <Widget>[
              Text(
                _contentHeaderTitle,
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
                      'Join Now',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Image(
          image: _contentImage,
          width: 800,
        ),
      ],
    );
  }
}

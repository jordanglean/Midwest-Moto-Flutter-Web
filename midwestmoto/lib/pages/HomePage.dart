import 'package:flutter/material.dart';
import 'package:midwestmoto/RouteSettings.dart';
// Widget Imports
// -- global widgets
import 'package:midwestmoto/widgets/main_navegation.bar.dart';
import 'package:midwestmoto/widgets/above_main_header_small_info_container.dart';
import 'package:midwestmoto/widgets/footer.dart';
import 'package:midwestmoto/widgets/main_res_navbar.dart';
// -- local  imports
import 'package:midwestmoto/widgets/home_page/home_page_top_banner.dart';
import 'package:midwestmoto/widgets/home_page/home_page_brand_logo.dart';
import 'package:midwestmoto/widgets/home_page/our_story.dart';
import 'package:midwestmoto/widgets/home_page/featured_motorcycles.dart';
import 'package:midwestmoto/widgets/home_page/see_offers_banner.dart';
import 'package:midwestmoto/widgets/home_page/shop_panda.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Repsonsive App Bar
      appBar: MediaQuery.of(context).size.width < 1000
          ? AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
              title: Center(
                child: Image.network(
                  '//cdn.shopify.com/s/files/1/0403/0336/2215/files/MWM_WINGS_LOGO_Indian_Red-1-removebg_150x.png?v=1591694781',
                  width: 70,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {},
                  color: Colors.black,
                ),
                IconButton(
                  icon: Icon(Icons.pin_drop_outlined),
                  onPressed: () {},
                  color: Colors.black,
                ),
              ],
            )
          : null,
      backgroundColor: Colors.grey.shade300,
      extendBody: true,
      // Floating Action Button
      floatingActionButton:
          (MediaQuery.of(context).size.width > 1000) ? CallButton() : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // Bottom Navegation Bar
      bottomNavigationBar: (MediaQuery.of(context).size.width > 1000)
          ? BottomAppBarMain()
          : null,
      // Home Page Body
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            (MediaQuery.of(context).size.width > 1000)
                ? AboveHeaderSmallContainer()
                : Padding(padding: EdgeInsets.all(0)),
            (MediaQuery.of(context).size.width > 1000)
                ? MainNavegationBar()
                : Padding(padding: EdgeInsets.all(0)),
            // Page Banner
            HomePageBanner(),
            // Brands Logo List
            BrandsLogoListWidget(),
            // Our Story Widget
            OurStoryWidget(),
            // Featured Motorcycle Widget Container
            FeaturedMotorcycleWidget(),
            // See Offer Widget
            SeeOfferWidget(),
            // Shop Parts and Apparels
            Padding(padding: EdgeInsets.all(5)),
            ShopPartAndApparel(),
            // Temp Spacer
            Padding(padding: EdgeInsets.all(20)),
            // Footer
            MainFooter(),
          ],
        ),
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  const CallButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.call_outlined,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushNamed(context, contactUsRoute);
        },
      ),
    );
  }
}

class BottomAppBarMain extends StatelessWidget {
  const BottomAppBarMain({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 4.0,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, scoutModelsRoute,
                      arguments: 'dATA FROM MAIN PAGE');
                },
                child: Text('Scout')),
            VerticalDivider(),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, ftrModelsRoute);
                },
                child: Text('FTR 1200')),
            VerticalDivider(),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, cruiserModels);
                },
                child: Text('Cruiser')),
            VerticalDivider(),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, baggerModelsRoute);
                },
                child: Text('Bagger')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, touringModelsRoute);
                },
                child: Text('Touring')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, challengerModelsRoute);
                },
                child: Text('Challenger')),
            VerticalDivider(),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, otherModels);
                },
                child: Text('Other Brands'))
          ],
        ),
      ),
    );
  }
}

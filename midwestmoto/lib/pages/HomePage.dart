import 'package:flutter/material.dart';
// Widget Imports
// -- global widgets
import 'package:midwestmoto/widgets/main_navegation.bar.dart';
import 'package:midwestmoto/widgets/above_main_header_small_info_container.dart';
import 'package:midwestmoto/widgets/footer.dart';
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
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(
          Icons.call_outlined,
          size: 30,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // Bottom Navegation Bar
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Scout')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('FTR 1200')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Cruiser')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Bagger')),
              FlatButton(onPressed: () {}, child: Text('Touring')),
              FlatButton(onPressed: () {}, child: Text('Challenger')),
              VerticalDivider(),
              FlatButton(onPressed: () {}, child: Text('Other Brands'))
            ],
          ),
        ),
      ),
      // Home Page Body
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AboveHeaderSmallContainer(),
            MainNavegationBar(),
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

import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/home/components/app_bar_title_widget.dart';
import 'package:med_delivery_fyp/screens/home/components/custom_navbar.dart';
import 'package:med_delivery_fyp/screens/home/components/home_header.dart';
import 'package:med_delivery_fyp/screens/home/components/pharm_near_you.dart';
import 'package:med_delivery_fyp/screens/home/components/popular_products.dart';
import 'package:med_delivery_fyp/screens/home/components/promotion_slides.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import '../../config/size_config.dart';
import '../../shared_widgets/shared_widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              PromotionSlide(),
              SizedBox(height: getProportionateScreenWidth(10)),
              TitleWithMoreBtn(title: 'Pharmacies near you', press: () {}),
              SizedBox(height: getProportionateScreenWidth(10)),
              PharmNearYou(),
              SizedBox(height: getProportionateScreenWidth(10)),
              TitleWithMoreBtn(title: 'Popular Products', press: () {}),
              SizedBox(height: getProportionateScreenWidth(10)),
              PopularProducts(),
              //PromotionSlider(),
              //DiscountBanner(),
              // Categories(),
              //SpecialOffers(),
              //SizedBox(height: getProportionateScreenWidth(30)),
              // PopularProducts(press: (){
              //   Navigator.pushNamed(context, ProductsList.routeName);
              // },),
              //SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(
          Icons.message_sharp,
          color: Colors.white,
          size: 25,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

PreferredSizeWidget? _customAppBar() {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    title: AppBarTitleWidget(),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: kPrimaryColor.withOpacity(0.8),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications_none,
          color: kPrimaryColor.withOpacity(0.8),
        ),
      ),
    ],
  );
}

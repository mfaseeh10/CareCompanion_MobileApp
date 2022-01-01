import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import '../../config/size_config.dart';

//import 'components/custom_navbar.dart';
import 'components/home_header.dart';
import 'components/pharm_near_you.dart';
import 'components/popular_products.dart';
import 'components/promotion_slides.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}

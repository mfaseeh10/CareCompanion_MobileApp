import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import 'package:med_delivery_fyp/screens/products_all/all_product_screen.dart';
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
    SizeConfig.init(context);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(
              text: 'Search Products',
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            PromotionSlide(),
            SizedBox(height: getProportionateScreenWidth(10)),
            TitleWithMoreBtn(title: 'Pharmacies near you', press: () {}),
            SizedBox(height: getProportionateScreenWidth(10)),
            PharmNearYou(),
            SizedBox(height: getProportionateScreenWidth(10)),
            TitleWithMoreBtn(
                title: 'Popular Products',
                press: () {
                  Navigator.pushNamed(context, AllProductsScreen.routeName);
                }),
            SizedBox(height: getProportionateScreenWidth(10)),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}

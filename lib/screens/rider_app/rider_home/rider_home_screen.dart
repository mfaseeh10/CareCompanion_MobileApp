import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import 'package:med_delivery_fyp/screens/products_all/all_product_screen.dart';
import '../../../config/constants.dart';
import '../../../config/size_config.dart';

//import 'components/custom_navbar.dart';
import 'components/home_header.dart';
import 'components/pharm_near_you.dart';
import 'components/popular_products.dart';
import 'components/promotion_slides.dart';

class RiderHomeScreen extends StatelessWidget {
  const RiderHomeScreen({Key? key}) : super(key: key);
  static String routeName = "/riderHomeScreen";

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
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: myDefaultPadding + myDefaultPadding * 0.4),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Welcome (RIDER NAME)!',
                style: TextStyle(
                  color: kPrimaryGrayColor.withOpacity(0.8),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Muli',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

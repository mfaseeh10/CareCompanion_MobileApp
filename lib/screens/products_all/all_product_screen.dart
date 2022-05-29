import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/home/components/home_header.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/components/section_header.dart';

import '../../config/constants.dart';
import '../../config/size_config.dart';
import '../../shared_widgets/all_products.dart';

class AllProductsScreen extends StatelessWidget {
  static String routeName = "/allproducts";
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: kPrimaryColor,
        title: Text('Products',
            style: TextStyle(
              fontFamily: 'Muli',
              fontWeight: FontWeight.w700,
              color: kPrimaryWhiteColor,
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              HomeHeader(text: 'Search products'),
              SizedBox(height: getProportionateScreenHeight(20)),
              SectionHeader(title: 'All Products'),
              SizedBox(height: getProportionateScreenWidth(10)),
              AllProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

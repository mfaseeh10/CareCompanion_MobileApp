import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/pharmacies.dart';
import 'package:med_delivery_fyp/screens/pharmacy_home_screen/components/all_products.dart';
import 'package:med_delivery_fyp/screens/pharmacy_home_screen/components/categories_slider.dart';
import 'package:med_delivery_fyp/screens/pharmacy_home_screen/components/popular_products.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/components/section_header.dart';
import 'package:med_delivery_fyp/shared_widgets/title_with_more_btn.dart';

class Body extends StatelessWidget {
  final Pharmacies pharm;
  const Body({
    required this.pharm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        SectionHeader(title: 'Popular Products'),
        PopularProducts(),
        SectionHeader(title: 'Categories'),
        CategoriesSlider(),
        SectionHeader(title: 'All Products'),
        AllProducts(),
      ]),
    );
  }
}

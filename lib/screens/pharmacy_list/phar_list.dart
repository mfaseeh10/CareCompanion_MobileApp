import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/home/components/app_bar_title_widget.dart';
import 'package:med_delivery_fyp/screens/home/components/home_header.dart';
import 'package:med_delivery_fyp/screens/home/components/pharm_near_you.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/components/section_header.dart';
import 'package:med_delivery_fyp/shared_widgets/bottom_navigation_bar.dart';

import '../../config/size_config.dart';
import '../../shared_widgets/shared_widgets.dart';
import 'components/all_pharm_list.dart';

class PharmacyList extends StatelessWidget {
  static String routeName = "/pharmacyList";
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(text: 'Search Pharmacies'),
            SizedBox(height: getProportionateScreenHeight(20)),
            SectionHeader(title: 'Pharmacies for you'),
            SizedBox(height: getProportionateScreenWidth(10)),
            PharmNearYou(),
            SizedBox(height: getProportionateScreenWidth(10)),
            SectionHeader(title: 'All Pharmacies'),
            SizedBox(height: getProportionateScreenWidth(10)),
            AllPharmacyList(),
          ],
        ),
      ),
    );
  }
}

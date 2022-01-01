import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/home/components/app_bar_title_widget.dart';
import 'package:med_delivery_fyp/screens/home/components/title_with_more_btn.dart';
import 'package:med_delivery_fyp/shared_widgets/bottom_navigation_bar.dart';

import '../../config/size_config.dart';
import '../../shared_widgets/shared_widgets.dart';

class PharmacyList extends StatelessWidget {
  static String routeName = "/pharmacyList";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            TitleWithMoreBtn(title: 'Pharmacies LIST broo', press: () {}),
            SizedBox(height: getProportionateScreenWidth(10)),
          ],
        ),
      ),
    );
  }
}

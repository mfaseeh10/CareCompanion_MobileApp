import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/components/pharmacy_card.dart';

class AllPharmacyList extends StatelessWidget {
  const AllPharmacyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List pharData = AppData.pharmacyList;
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      width: SizeConfig.screenWidth,
      height: getProportionateScreenHeight(350),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
        child: Column(
          children: pharData.map((e) => PharmacyCard(pharcard: e)).toList(),
        ),
      ),
    );
  }
}

class TestContainer extends StatelessWidget {
  const TestContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth,
          height: getProportionateScreenHeight(80),
          decoration: BoxDecoration(color: kPrimaryWhiteColor),
          //child: Colu,
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
      ],
    );
  }
}

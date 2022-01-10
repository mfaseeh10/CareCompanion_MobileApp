import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/pharmacies.dart';

class PharmacyHome extends StatelessWidget {
  static String routeName = "/pharmacyHome";
  const PharmacyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Pharmacies;
    return Scaffold(
      appBar: AppBar(
        title: Text('${args.name}'),
        actions: [],
      ),
      body: Column(children: [
        Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight * 0.6,
          color: kPrimaryColor,
        )
      ]),
    );
  }
}

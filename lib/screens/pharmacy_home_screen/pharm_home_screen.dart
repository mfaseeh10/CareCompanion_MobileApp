import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/model/pharmacies.dart';
import 'package:med_delivery_fyp/screens/pharmacy_home_screen/components/body.dart';

class PharmacyHome extends StatelessWidget {
  static String routeName = "/pharmacyHome";
  const PharmacyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments == null
        ? "NULL"
        : ModalRoute.of(context)!.settings.arguments as Pharmacies;

    if (args == 'NULL') {
      args = AppData.pharmacyList[0];
    }

    Pharmacies pharm = args as Pharmacies;
    //final args = ModalRoute.of(context)!.settings.arguments as Pharmacies;
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
        title: Text(
          pharm.name,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Muli',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
      ),
      body: Body(
        pharm: pharm,
      ),
    );
  }
}

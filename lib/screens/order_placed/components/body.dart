import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:med_delivery_fyp/config/constants.dart';

import '../../../config/size_config.dart';
import '../../../shared_widgets/default_button.dart';
import '../../home/home.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Container(
          height: SizeConfig.screenHeight * 0.4,
          width: SizeConfig.screenWidth * 0.8,
          child: SvgPicture.asset(
            "assets/images/order_confirmed.svg",
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 0.75, right: 0.75),
          child: Text(
            "Order Placed Successfully!",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(25),
              fontWeight: FontWeight.bold,
              color: kPrimaryGrayColor,
            ),
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.of(context).popAndPushNamed(Home.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}

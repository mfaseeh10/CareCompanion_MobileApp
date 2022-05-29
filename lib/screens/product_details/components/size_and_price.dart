import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';

import 'size_drop_down.dart';

class SizeAndPriceRow extends StatelessWidget {
  const SizeAndPriceRow({
    Key? key,
    required this.price,
  }) : super(key: key);

  //final Type size;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.only(
          left: myDefaultPadding / 4, right: myDefaultPadding / 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: SizeConfig.screenHeight * 0.1,
            width: SizeConfig.screenWidth * 0.35,
            padding: EdgeInsets.only(
                top: myDefaultPadding,
                bottom: myDefaultPadding,
                left: myDefaultPadding / 2),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    top: myDefaultPadding / 2, left: myDefaultPadding),
                hintText: 'Quantity',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(myDefaultPadding),
            child: Text(
              'Rs.$price',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryGrayColor.withOpacity(0.8),
              ),
            ),
          )
        ],
      ),
    );
  }
}

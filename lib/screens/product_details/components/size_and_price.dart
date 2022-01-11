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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: SizeConfig.screenHeight * 0.1,
          width: SizeConfig.screenWidth / 2,
          padding: EdgeInsets.all(myDefaultPadding),
          child: SizeDropdown(),
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
    );
  }
}

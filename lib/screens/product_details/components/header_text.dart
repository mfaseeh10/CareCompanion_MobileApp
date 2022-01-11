import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/product.dart';

class HeaderAndText extends StatelessWidget {
  const HeaderAndText({
    Key? key,
    required this.str,
    required this.header,
  }) : super(key: key);

  //final Product prod;
  final String header;
  final String str;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      //  height: SizeConfig.screenHeight * 0.15,
      // color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: myDefaultPadding / 2),
            child: Text(
              '$header\n',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor.withOpacity(0.6)),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: myDefaultPadding / 2),
            child: Text(
              str,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 20,
            ),
          )
        ],
      ),
    );
  }
}

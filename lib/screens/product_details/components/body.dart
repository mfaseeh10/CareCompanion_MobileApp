import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/product.dart';
import 'package:med_delivery_fyp/screens/product_details/components/product_title.dart';

import 'header_text.dart';
import 'size_and_price.dart';

class Body extends StatelessWidget {
  final Product prod;
  const Body({Key? key, required this.prod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
              image: DecorationImage(
                  image: NetworkImage(prod.images[0]), fit: BoxFit.fitWidth),
            ),
          ),

          ProductTitle(title: prod.title),

          // Container(
          //     width: SizeConfig.screenWidth,
          //     height: SizeConfig.screenHeight * 0.015,
          //     color: kPrimaryColor),
          SizeAndPriceRow(price: prod.price),
          HeaderAndText(header: 'About the Product', str: prod.description),
          HeaderAndText(header: 'Side Effects', str: prod.sideEffects),
          SizedBox(
            height: getProportionateScreenHeight(25),
            width: SizeConfig.screenWidth,
          ),

          Container(
            //height: SizeConfig.screenHeight * 0.1,
            width: SizeConfig.screenWidth,
            //color: myPrimaryColor.withOpacity(0.3),
            child: Row(
              //mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: kPrimaryDarkColor),
                  child: Container(
                    width: SizeConfig.screenWidth * 0.1,
                    height: SizeConfig.screenHeight * 0.07,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite_outline_sharp,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.40,
                  height: SizeConfig.screenHeight * 0.10,
                  //color: myPrimaryColor.withOpacity(0.3),
                  padding: EdgeInsets.all(myDefaultPadding / 4),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        //fixedSize: size * 0.2,
                        primary: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text('Add to cart')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

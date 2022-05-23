import 'package:flutter/material.dart';

import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/product.dart';
import 'package:med_delivery_fyp/screens/product_details/components/product_title.dart';
import 'package:med_delivery_fyp/screens/product_details/components/reviews.dart';
import 'package:med_delivery_fyp/screens/product_details/components/similar_products.dart';
import 'package:med_delivery_fyp/shared_widgets/sticky_label.dart';

import '../../../helper/data.dart';
import '../../../shared_widgets/reviewUI.dart';
import '../../../shared_widgets/title_with_more_btn.dart';
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
                  height: SizeConfig.screenHeight * 0.05,
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
          SizedBox(
            height: getProportionateScreenHeight(25),
            width: SizeConfig.screenWidth,
          ),
          TitleWithMoreBtn(
            title: 'Similar Products',
            press: () {},
          ),
          SimilarProducts(),
          Container(
            height: getProportionateScreenHeight(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StickyLabel(
                  text: "Reviews",
                  textColor: kPrimaryDarkColor,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Reviews(),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: StickyLabel(
                        text: "View All", textColor: kPrimaryGrayColor),
                  ),
                ),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 8.0, top: 8.0),
            itemCount: 2,
            itemBuilder: (context, index) {
              return ReviewUI(
                name: AppData.reviewList[index].name,
                date: AppData.reviewList[index].date,
                comment: AppData.reviewList[index].comment,
                rating: AppData.reviewList[index].rating,
                onPressed: () => print("More Action $index"),
                onTap: () {},
                isLess: false,
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1.0,
                color: kPrimaryDarkColor,
              );
            },
          ),
        ],
      ),
    );
  }
}

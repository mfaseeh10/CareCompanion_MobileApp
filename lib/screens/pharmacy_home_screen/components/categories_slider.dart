import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/model/product_type.dart';
import 'package:med_delivery_fyp/screens/product_details/product_detail_screen.dart';
import '../../../helper/data.dart';
import '../../../config/constants.dart';
import '../../../model/product.dart';

class CategoriesSlider extends StatelessWidget {
  CategoriesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * .3,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 4 / 3,
            mainAxisSpacing: 30,
            crossAxisSpacing: 20),
        padding: EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        children: AppData.prodType
            .map(
              (type) => CategoryCard(
                prodType: type,
              ),
            )
            .toList(),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final ProductType prodType;
  //final ValueChanged<Product> onSelected;
  CategoryCard({
    Key? key,
    required this.prodType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor, style: BorderStyle.solid),
          color: kPrimaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        height: getProportionateScreenHeight(10),
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: getProportionateScreenHeight(40)),
              Text(
                prodType.name,
                style: TextStyle(
                  fontFamily: 'Muli',
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

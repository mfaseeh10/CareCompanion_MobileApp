import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/model/product.dart';
import 'package:med_delivery_fyp/screens/product_details/components/body.dart';

class ProductDetailScreen extends StatefulWidget {
  static String routeName = "/productScreen";
  Product? prod;
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  //const ProductDetailScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments == null
        ? "NULL"
        : ModalRoute.of(context)!.settings.arguments as Product;

    if (args == 'NULL') {
      args = AppData.productList[0];
    }
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
        title: Text(
          'Product Overivew',
          style: TextStyle(
              color: kPrimaryWhiteColor,
              fontFamily: 'Muli',
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(
        prod: args as Product,
      ),
    );
  }
}

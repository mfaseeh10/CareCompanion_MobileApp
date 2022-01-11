import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  //final double width;
  // void callback is a new version to pass function as as arg for onPressed in the new null-safety way
  // final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          top: myDefaultPadding + myDefaultPadding * 0.5,
          left: myDefaultPadding),
      width: size.width,
      //color: Colors.amber,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

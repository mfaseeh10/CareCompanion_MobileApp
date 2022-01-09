import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import '../../../config/constants.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
    // required this.press,
  }) : super(key: key);
  final String title;
  // void callback is a new version to pass function as as arg for onPressed in the new null-safety way
  //final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getProportionateScreenHeight(28),
          child: Padding(
            padding: const EdgeInsets.only(left: myDefaultPadding),
            child: Text(
              title,
              style: TextStyle(
                color: kPrimaryGrayColor,
                fontFamily: 'Muli',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

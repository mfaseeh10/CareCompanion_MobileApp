import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';

import '../../../config/constants.dart';

class AppBarTitleWidget extends StatelessWidget {
  final int currentPage;

  AppBarTitleWidget({Key? key, required this.currentPage}) : super(key: key);

  final List appBarContent = [
    Row(
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Care',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'COMPANION',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Pharmacy',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: ' List',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Notifications',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Row(
      children: <Widget>[
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'My Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // TextSpan(
              //   text: ' Profile',
              //   style: TextStyle(
              //     color: Colors.grey[400],
              //     fontSize: 18,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return appBarContent[currentPage];
  }
}

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/phar_list.dart';

import '../../config/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final selectedIndex;
  ValueChanged<int> onTap;
  CustomBottomNavigationBar({this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      style: Style(),
      child: ConvexAppBar(
        style: TabStyle.textIn,
        height: 50,
        backgroundColor: Colors.white,
        color: kPrimaryColor,
        activeColor: kPrimaryColor,
        // curveSize: 70,
        // top: -20,
        items: [
          TabItem(
              activeIcon: Icon(
                Icons.home,
                size: 30,
                color: kPrimaryColor,
              ),
              icon: Icon(
                Icons.home,
                color: kPrimaryGrayColor,
              ),
              title: 'Home'),
          TabItem(
              activeIcon: Icon(
                Icons.search,
                size: 30,
                color: kPrimaryColor,
              ),
              icon: Icon(
                Icons.search,
                color: kPrimaryGrayColor,
              ),
              title: 'Search'),
          TabItem(
              activeIcon: Icon(
                Icons.notifications,
                size: 30,
                color: kPrimaryColor,
              ),
              icon: Icon(
                Icons.notifications,
                color: kPrimaryGrayColor,
              ),
              title: 'Notification'),
          TabItem(
              activeIcon: Icon(
                Icons.person,
                size: 30,
                color: kPrimaryColor,
              ),
              icon: Icon(
                Icons.person,
                color: kPrimaryGrayColor,
              ),
              title: 'Profile'),
        ],
        initialActiveIndex: bottomIndex,
        onTap: onTap,
      ),
    );
  }
}

/// CLASS STYLE
class Style extends StyleHook {
  @override
  double get activeIconSize => 30;

  @override
  double get activeIconMargin => 15;

  @override
  double get iconSize => 15;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(
        fontFamily: 'Muli',
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
        color: color);
  }
}

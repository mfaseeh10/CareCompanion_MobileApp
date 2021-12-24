import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
// import 'package:grocery_app/screens/cart/cart_screen.dart';
// import 'package:grocery_app/screens/home/home_screen.dart';
// import 'package:grocery_app/screens/profile/profile_screen.dart';
// import 'package:grocery_app/screens/wishlist/wishlist_screen.dart';
import '../../config/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _onItemTapped(int index) {
    setState(() {
      bottomIndex = index;
    });
    if (index == 0) {
      // Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
    if (index == 1) {
      // Navigator.pushReplacementNamed(context, WishList.routeName);
    }
    if (index == 2) {
      // Navigator.pushReplacementNamed(context, CartScreen.routeName);
    }
    if (index == 3) {
      //Navigator.pushReplacementNamed(context, ProfileScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      style: Style(),
      child: ConvexAppBar(
        style: TabStyle.textIn,
        height: 50,
        backgroundColor: kPrimaryColor,
        color: kPrimaryLightColor,
        activeColor: kPrimaryBlackColor,
        // curveSize: 70,
        // top: -20,
        items: [
          TabItem(
              activeIcon: Icon(
                Icons.home,
                size: 30,
              ),
              icon: Icon(
                Icons.home,
                color: kPrimaryLightColor,
              ),
              title: 'Home'),
          TabItem(
              activeIcon: Icon(
                Icons.favorite_border,
                size: 30,
              ),
              icon: Icon(
                Icons.favorite_border,
                color: kPrimaryLightColor,
              ),
              title: 'Wish'),
          TabItem(
              activeIcon: Icon(
                Icons.card_travel,
                size: 30,
              ),
              icon: Icon(
                Icons.card_travel,
                color: kPrimaryLightColor,
              ),
              title: 'Cart'),
          TabItem(
              activeIcon: Icon(
                Icons.person,
                size: 30,
              ),
              icon: Icon(
                Icons.person,
                color: kPrimaryLightColor,
              ),
              title: 'Profile'),
        ],
        initialActiveIndex: bottomIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

/// CLASS STYLE
class Style extends StyleHook {
  @override
  double get activeIconSize => 40;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 20;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(
        fontFamily: 'Rift Soft',
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
        color: color);
  }
}

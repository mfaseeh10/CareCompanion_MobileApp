import 'package:flutter/material.dart';

import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/cart/cart_screen.dart';
import 'package:med_delivery_fyp/screens/home/components/app_bar_title_widget.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int pageNo;
  final Widget titleWidget;

  const MyAppBar({
    Key? key,
    required this.titleWidget,
    required this.pageNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: pageNo == 3 ? kPrimaryColor : null,
      leading: pageNo == 0 ? Image.asset('assets/images/delivery.png') : null,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: titleWidget,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              CartScreen.routeName,
            );
          },
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: pageNo == 3 ? Colors.white : kPrimaryColor.withOpacity(0.8),
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.notifications_none,
        //     color: pageNo == 3 ? Colors.white : kPrimaryColor.withOpacity(0.8),
        //   ),
        // ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

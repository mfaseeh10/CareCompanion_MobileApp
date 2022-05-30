import 'package:flutter/material.dart';

import 'package:med_delivery_fyp/config/constants.dart';

class RiderAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int pageNo;
  final Widget titleWidget;

  const RiderAppBar({
    Key? key,
    required this.titleWidget,
    required this.pageNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: pageNo == 3 ? kPrimaryColor : null,
      leading: pageNo == 0 ? Image.asset('assets/images/delivery.png') : null,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: titleWidget,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}

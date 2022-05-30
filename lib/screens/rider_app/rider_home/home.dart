import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/notifications/notification_screen.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_appbar_title.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_home/rider_home_screen.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_orders/rider_orders_screen.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_profile/rider_profile_screen.dart';
import 'package:med_delivery_fyp/shared_widgets/bottom_navigation_bar.dart';

import '../rider_appbar.dart';

class RiderHome extends StatefulWidget {
  RiderHome({Key? key}) : super(key: key);

  static String routeName = "/riderHome";

  @override
  State<RiderHome> createState() => _RiderHomeState();
}

class _RiderHomeState extends State<RiderHome> {
  int selectedIndex = 0;

  final List _screens = [
    RiderHomeScreen(),
    RiderOrdersScreen(),
    NotificationScreen(),
    RiderProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: RiderAppBar(
          pageNo: selectedIndex,
          titleWidget: RiderAppBarTitleWidget(
            currentPage: selectedIndex,
          )),
      body: _screens.elementAt(selectedIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: _onItemTapped,
        selectedIndex: selectedIndex,
      ),
    );
  }
}

// PreferredSizeWidget? _customAppBar() {
//   return AppBar(
//     elevation: 0,
//     automaticallyImplyLeading: false,
//     title: AppBarTitleWidget(),
//     actions: <Widget>[
//       IconButton(
//         onPressed: () {},
//         icon: Icon(
//           Icons.shopping_cart_outlined,
//           color: kPrimaryColor.withOpacity(0.8),
//         ),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: Icon(
//           Icons.notifications_none,
//           color: kPrimaryColor.withOpacity(0.8),
//         ),
//       ),
//     ],
//   );
// }

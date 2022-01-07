import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/home/home_screen.dart';
import 'package:med_delivery_fyp/screens/notifications/notification_screen.dart';
import 'package:med_delivery_fyp/screens/pharmacy_list/phar_list.dart';
import 'package:med_delivery_fyp/shared_widgets/bottom_navigation_bar.dart';

import 'components/app_bar_title_widget.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  static String routeName = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  final List _screens = [
    HomeScreen(),
    PharmacyList(),
    NotificationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      body: _screens.elementAt(selectedIndex),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(
          Icons.message_sharp,
          color: Colors.white,
          size: 20,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: _onItemTapped,
        selectedIndex: selectedIndex,
      ),
    );
  }
}

PreferredSizeWidget? _customAppBar() {
  return AppBar(
    elevation: 0,
    automaticallyImplyLeading: false,
    title: AppBarTitleWidget(),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: kPrimaryColor.withOpacity(0.8),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications_none,
          color: kPrimaryColor.withOpacity(0.8),
        ),
      ),
    ],
  );
}

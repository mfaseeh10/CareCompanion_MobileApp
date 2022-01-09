import 'package:flutter/widgets.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/home/home_screen.dart';
import 'package:med_delivery_fyp/screens/notifications/notification_screen.dart';
import 'package:med_delivery_fyp/screens/user_profile/user_profile_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/pharmacy_list/phar_list.dart';

// import '../screens/sign_up/sign_up_screen.dart';
// import '../screens/orders/orders_screen.dart';

final Map<String, WidgetBuilder> routes = {
//
//   NotificationsScreen.routeName: (context) => NotificationsScreen(),
//   SettingsPage.routeName: (context) => SettingsPage(),
//   MyAccountScreen.routeName: (context) => MyAccountScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  //HomeScreen.routeName: (context) => HomeScreen(),
  Home.routeName: (context) => Home(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  PharmacyList.routeName: (context) => PharmacyList(),
  UserProfile.routeName: (context) => UserProfile(),
};

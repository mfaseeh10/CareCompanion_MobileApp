import 'package:flutter/widgets.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/home/home_screen.dart';
// import 'package:grocery_app/screens/categories/categories_screen.dart';
// import 'package:grocery_app/screens/my_account/my_account_screen.dart';
// import 'package:grocery_app/screens/notifications/notification_screen.dart';
// import 'package:grocery_app/screens/products/products_list.dart';
// import 'package:grocery_app/screens/settings/settings_screen.dart';
// import 'package:grocery_app/screens/wishlist/wishlist_screen.dart';
// import '../screens/cart/cart_screen.dart';
// import '../screens/complete_profile/complete_profile_screen.dart';
// import '../screens/details/details_screen.dart';
// import '../screens/forgot_password/forgot_password_screen.dart';
// import '../screens/home/home_screen.dart';
// import '../screens/login_success/login_success_screen.dart';
// import '../screens/otp/otp_screen.dart';
// import '../screens/profile/profile_screen.dart';
// import '../screens/sign_in/sign_in_screen.dart';
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

  PharmacyList.routeName: (context) => PharmacyList(),
};

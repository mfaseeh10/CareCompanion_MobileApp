import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/splash_zero/splash_page.dart';
import 'package:med_delivery_fyp/screens/walkthrough_sc/walkthrough_screen.dart';
import '../config/routes.dart';

import '../config/theme.dart';
import '/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Care Companion',
      theme: theme(),
      home: Walkthrough(),
      initialRoute: SplashPage.routeName,
      routes: routes,
    );
  }
}

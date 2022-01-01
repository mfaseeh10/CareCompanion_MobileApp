import 'package:flutter/material.dart';
import '../config/routes.dart';
import '../screens/splash/splash_screen.dart';
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
      home: Home(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

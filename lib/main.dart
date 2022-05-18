import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/splash_zero/splash_page.dart';
import 'package:med_delivery_fyp/screens/walkthrough_sc/walkthrough_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/routes.dart';

import '../config/theme.dart';
import '/screens/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage firebaseStorage = FirebaseStorage.instance;

  MyApp({required this.prefs});

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

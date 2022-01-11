import 'dart:async';

import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/screens/walkthrough_sc/walkthrough_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  static String routeName = "/splash";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => {_loadScreen()});
  }

  _loadScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('is_logged_in') ?? false) {
      Navigator.of(context).popAndPushNamed(Walkthrough.routeName);
    } else {
      Navigator.of(context).popAndPushNamed(Walkthrough.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: kPrimaryColor.withOpacity(0.4),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: size.height * 0.2,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/delivery.png',
                        fit: BoxFit.contain,
                      )),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Icon(
                      //   Icons.add,
                      //   color: kColorPink,
                      //   size: 48,
                      // ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Care',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Companion',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 2,
              child: LinearProgressIndicator(
                backgroundColor: kPrimaryColor,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}

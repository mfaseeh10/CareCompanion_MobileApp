import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/screens/portal_select/portal_select_screen.dart';
import '../../helper/data.dart';
import '../home/home.dart';
import 'package:med_delivery_fyp/shared_widgets/shared_widgets.dart';
// import 'package:grocery_app/screens/home/home_screen.dart';
// import 'package:grocery_app/screens/sign_in/sign_in_screen.dart';
// import 'package:grocery_app/shared_widgets/default_button.dart';
import '../../config/constants.dart';
import '../../config/size_config.dart';
import 'components/splash_components.dart';

class Walkthrough extends StatefulWidget {
  static String routeName = "/walkthrough";

  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig.init(context);
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: AppData.splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: AppData.splashData[index]["image"],
                  text: AppData.splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        AppData.splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        // Navigator.pushReplacementNamed(
                        //     context, LoginPage.routeName);
                        Navigator.pushReplacementNamed(
                            context, PortalSelectScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

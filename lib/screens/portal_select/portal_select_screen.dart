//import 'package:doctor_appointment_booking/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/forgot/forgot_password_page.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_login/rider_login_page.dart';
import 'package:med_delivery_fyp/screens/signup/signup_page.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';

import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

class PortalSelectScreen extends StatelessWidget {
  static String routeName = "/portalSelect";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getProportionateScreenHeight(250),
                            width: getProportionateScreenWidth(200),
                            child: Image.asset(
                              'assets/images/delivery.png',
                              scale: 1,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Care',
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Companion',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(60),
                      ),
                      Text(
                        'Are you a?',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-Bold',
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                      WidgetPortal(),
                      Expanded(
                        child: SizedBox(
                          height: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class WidgetPortal extends StatefulWidget {
  @override
  _WidgetPortalState createState() => _WidgetPortalState();
}

class _WidgetPortalState extends State<WidgetPortal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 35,
        ),
        CustomButton(
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.routeName);
          },
          text: 'User',
        ),
        SizedBox(
          height: 35,
        ),
        CustomButton(
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(RiderLoginPage.routeName);
          },
          text: 'Rider',
        )
      ],
    );
  }
}

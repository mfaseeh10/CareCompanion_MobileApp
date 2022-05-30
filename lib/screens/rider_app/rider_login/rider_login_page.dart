//import 'package:doctor_appointment_booking/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/forgot/forgot_password_page.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_home/home.dart';
import 'package:med_delivery_fyp/screens/rider_app/rider_signup/rider_signup_screen.dart';
import 'package:med_delivery_fyp/screens/signup/signup_page.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';

import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

class RiderLoginPage extends StatelessWidget {
  static String routeName = "/riderLogin";

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
                            height: getProportionateScreenHeight(200),
                            width: getProportionateScreenWidth(150),
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
                                            fontFamily: 'Muli'),
                                      ),
                                      TextSpan(
                                        text: 'Companion',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Muli',
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
                        height: getProportionateScreenHeight(10),
                      ),
                      Center(
                        child: Text(
                          'Rider Portal',
                          style: TextStyle(
                            color: kPrimaryGrayColor.withOpacity(0.8),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Muli',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-Bold',
                        ),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      WidgetSignin(),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(ForgotPasswordPage.routeName);
                          },
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontFamily: 'Muli',
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Not a rider?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontFamily: 'Muli',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 5,
                        ),
                      ),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'You dont have an account ?',
                              style: TextStyle(
                                color: Color(0xffbcbcbc),
                                fontSize: 12,
                                fontFamily: 'NunitoSans',
                              ),
                            ),
                            Text('   '),
                            InkWell(
                              borderRadius: BorderRadius.circular(2),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(RiderSignupPage.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  'Register now',
                                  style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Bold',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
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

class WidgetSignin extends StatefulWidget {
  @override
  _WidgetSigninState createState() => _WidgetSigninState();
}

class _WidgetSigninState extends State<WidgetSignin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email:',
          style: kInputTextStyle,
        ),
        CustomTextFormField(
          controller: _emailController,
          hintText: 'faseeh@gmail.com',
          obscureText: false,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Password:',
          style: kInputTextStyle,
        ),
        CustomTextFormField(
          controller: _passwordController,
          hintText: '* * * * * *',
          obscureText: true,
        ),
        SizedBox(
          height: 35,
        ),
        CustomButton(
          onPressed: () {
            Navigator.of(context).pushNamed(RiderHome.routeName);
          },
          text: 'Login',
        )
      ],
    );
  }
}

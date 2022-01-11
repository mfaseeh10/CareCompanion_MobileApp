//import 'package:doctor_appointment_booking/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/screens/forgot/forgot_password_page.dart';
import 'package:med_delivery_fyp/screens/home/home.dart';
import 'package:med_delivery_fyp/screens/signup/signup_page.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_icons.dart';
import 'package:med_delivery_fyp/shared_widgets/social_icon.dart';
import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  static String routeName = "/login";

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
                        child: FlatButton(
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              endIndent: 20,
                            ),
                          ),
                          Text(
                            'Social login',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              indent: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FaIcon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 50.0,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          FaIcon(
                            FontAwesomeIcons.googlePlusG,
                            color: Colors.red,
                            size: 50.0,
                          ),
                        ],
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
                                    .pushNamed(SignupPage.routeName);
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
            Navigator.of(context).popAndPushNamed(Home.routeName);
          },
          text: 'Login',
        )
      ],
    );
  }
}

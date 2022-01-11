import 'package:doctor_appointment_booking/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_icons.dart';
import '../../components/social_icon.dart';
import '../../components/text_form_field.dart';
import '../../constants.dart';

class LoginPage extends StatelessWidget {
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
                      Container(
                        height: 200,
                        padding: EdgeInsets.only(top: 30, left: 80),
                        child: Image.asset(
                          'assets/images/delivery.png',
                          scale: 1,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 80),
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
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Companion',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        height: 50,
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 30,
                      ),
                      WidgetSignin(),
                      Center(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(Routes.forgotPassword);
                          },
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontFamily: 'NunitoSans',
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
                              color: kColorDarkBlue,
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
                          SocialIcon(
                            colors: [
                              Color(0xff102397),
                              Color(0xff187adf),
                              Color(0xff00eaf8),
                            ],
                            iconData: CustomIcons.facebook,
                            onPressed: () {},
                          ),
                          SocialIcon(
                            colors: [
                              Color(0xffff4f38),
                              Color(0xff1ff355d),
                            ],
                            iconData: CustomIcons.googlePlus,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 20,
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
                                Navigator.of(context).pushNamed(Routes.signup);
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
            Navigator.of(context).popAndPushNamed(Routes.home);
          },
          text: 'Login',
        )
      ],
    );
  }
}

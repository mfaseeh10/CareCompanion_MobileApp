import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/config/size_config.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';
import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  static String routeName = "/forgot";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
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
                      SizedBox(
                        height: getProportionateScreenHeight(30),
                      ),
                      Text(
                        'Forgot password',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Muli',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      WidgetForgot(),
                      Center(
                        child: FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Login',
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

class WidgetForgot extends StatefulWidget {
  @override
  _WidgetForgotState createState() => _WidgetForgotState();
}

class _WidgetForgotState extends State<WidgetForgot> {
  final _emailController = TextEditingController();

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
          hintText: 'bhr.tawfik@gmail.com',
          obscureText: false,
        ),
        SizedBox(
          height: 35,
        ),
        CustomButton(
          onPressed: () {},
          text: 'Reset password',
        )
      ],
    );
  }
}

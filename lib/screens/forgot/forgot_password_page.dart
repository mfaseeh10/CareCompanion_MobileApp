import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/text_form_field.dart';
import '../../constants.dart';

class ForgotPasswordPage extends StatelessWidget {
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
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Image.asset(
                          'assets/images/logo.png',
                          scale: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        'Forgot password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins-Bold',
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
                              color: kColorBlue,
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

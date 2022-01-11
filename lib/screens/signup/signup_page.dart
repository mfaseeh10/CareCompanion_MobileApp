import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';
import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

enum Gender { male, female }

class SignupPage extends StatelessWidget {
  static String routeName = "/signup";
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 38),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Muli',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    WidgetSignup(),
                    Expanded(
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 38),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already a member ?',
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
                                    .popAndPushNamed(LoginPage.routeName);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5),
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
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class WidgetSignup extends StatefulWidget {
  @override
  _WidgetSignupState createState() => _WidgetSignupState();
}

class _WidgetSignupState extends State<WidgetSignup> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Gender _gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'First name:',
                style: kInputTextStyle,
              ),
              CustomTextFormField(
                controller: _firstNameController,
                hintText: 'John',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Last name:',
                style: kInputTextStyle,
              ),
              CustomTextFormField(
                controller: _lastNameController,
                hintText: 'Doe',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Gender:',
                style: kInputTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              Radio(
                value: Gender.male,
                groupValue: _gender,
                onChanged: (gender) {
                  setState(() {
                    _gender = gender as Gender;
                  });
                },
              ),
              Text(
                'Male',
                style: kInputTextStyle,
              ),
              SizedBox(
                width: 30,
              ),
              Radio(
                value: Gender.female,
                groupValue: _gender,
                onChanged: (gender) {
                  setState(() {
                    _gender = gender as Gender;
                  });
                },
              ),
              Text(
                'Female',
                style: kInputTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Email:',
                style: kInputTextStyle,
              ),
              CustomTextFormField(
                controller: _emailController,
                hintText: 'bhr.tawfik@gmail.com',
                obscureText: true,
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
                height: 20,
              ),
              Text(
                'Confirm password:',
                style: kInputTextStyle,
              ),
              CustomTextFormField(
                controller: _confirmPasswordController,
                hintText: '* * * * * *',
                obscureText: true,
              ),
              SizedBox(
                height: 35,
              ),
              CustomButton(
                onPressed: () {},
                text: 'Sign up',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

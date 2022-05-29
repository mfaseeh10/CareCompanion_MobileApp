import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/screens/login/login_page.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';
import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

enum Gender { male, female }

class UserAccountDetailsScreen extends StatelessWidget {
  static String routeName = "/accountDetails";
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
                        'My Account',
                        style: TextStyle(
                          color: kPrimaryDarkColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Muli',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    WidgetAccountDetails(),
                    Expanded(
                      child: SizedBox(
                        height: 20,
                      ),
                    ),
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

class WidgetAccountDetails extends StatefulWidget {
  @override
  _WidgetAccountDetailsState createState() => _WidgetAccountDetailsState();
}

class _WidgetAccountDetailsState extends State<WidgetAccountDetails> {
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
                hintText: AppData.user_1.firstName,
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
                hintText: AppData.user_1.lastName,
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
                hintText: AppData.user_1.userEmail,
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
                text: 'Save',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

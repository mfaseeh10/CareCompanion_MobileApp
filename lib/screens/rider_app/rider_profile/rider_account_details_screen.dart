import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';
import 'package:med_delivery_fyp/helper/data.dart';
import 'package:med_delivery_fyp/shared_widgets/custom_button.dart';
import 'package:med_delivery_fyp/shared_widgets/text_form_field.dart';

class RiderAccountDetailsScreen extends StatelessWidget {
  static String routeName = "/riderAccountDetails";
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
                    RiderWidgetAccount(),
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

class RiderWidgetAccount extends StatefulWidget {
  @override
  _RiderWidgetAccountState createState() => _RiderWidgetAccountState();
}

class _RiderWidgetAccountState extends State<RiderWidgetAccount> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _contactNoController = TextEditingController();

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
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Contact No:',
                style: kInputTextStyle,
              ),
              CustomTextFormField(
                controller: _contactNoController,
                hintText: '+92 300 0000000',
                obscureText: false,
              ),
              SizedBox(
                height: 20,
              ),
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

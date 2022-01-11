import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/screens/about_terms_policy/components/body.dart';

//import './components/order_item.dart';
import '/config/constants.dart';

class TermsConditionScreen extends StatelessWidget {
  static const routeName = '/terms';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
          backgroundColor: kPrimaryColor,
          title: Text('Terms and Conditions',
              style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.w700,
                color: kPrimaryWhiteColor,
              )),
        ),
        body: Body());
  }
}

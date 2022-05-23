import 'package:flutter/material.dart';
import 'size_config.dart';

export 'color_constants.dart';
export 'firestore_constants.dart';

var bottomIndex = 0;

//const kPrimaryColor = Color(0xFF5F9EA0);
const kPrimaryColor = Color(0xFF008080);
const kPrimaryWhiteColor = Color(0xFFFFFFFF);
const kPrimaryGrayColor = Color(0xFF808080);

const kPrimaryLightColor = Color(0xFF00b3b3);
const kPrimaryDarkColor = Color(0xFF008080);

const kPrimaryBlackColor = Color(0xFF000000);
//

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF00cccc),
    Color(0xFF009999),
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);
const double myDefaultPadding = 20.0;

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

const kInputTextStyle = TextStyle(
    fontSize: 14,
    color: Color(0xffbcbcbc),
    fontWeight: FontWeight.w300,
    fontFamily: 'Muli');

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

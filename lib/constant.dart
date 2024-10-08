import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

const Color kPrimaryColor = Color(0xffff7643);
const Color kPrimaryLightColor = Color(0xffffecdf);
const Gradient kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xffffa53a),
    Color(0xffff7643),
  ]
  );

const Color secondaryColor = Color(0xff979797);
const Color kTeksColor = Color(0xff757575);
const Duration kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
              fontSize: getPropotionateScreenWidth(28),
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.5   
            );

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";

// complete profile
const String kNameNullError = "Please Enter Your Name Bitch";
const String kPhoneNumberNullError = "Please Enter Your Phone Number Bitch";
const String kAddressNullError = "Please Enter Your Home Address Bitch";



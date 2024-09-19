import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/complete_profile/complete_profile_screen.dart';
import 'package:project_flutter_shop_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:project_flutter_shop_ui/screen/login_succes/login_success_screen.dart';
import 'package:project_flutter_shop_ui/screen/sign_in/sign_in_screen.dart';
import 'package:project_flutter_shop_ui/screen/sign_up/sign_up_screen.dart';
import 'package:project_flutter_shop_ui/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routesName: (context) => const SignUpScreen(),
  CompleteProfileScreen.nameRoute: (context) => const CompleteProfileScreen()
};

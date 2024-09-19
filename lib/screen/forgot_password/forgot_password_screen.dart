import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = '/forgot_password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Forgot Password'),
    ),
    body: Body(),);
  }
}

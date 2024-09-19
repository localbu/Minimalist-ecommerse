import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routesName = '/sign_up';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

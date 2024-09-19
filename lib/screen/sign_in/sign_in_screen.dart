import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

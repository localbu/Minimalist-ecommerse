import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/login_succes/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login Success Screen'),
      ),
      body: Body(),
    );
  }
}

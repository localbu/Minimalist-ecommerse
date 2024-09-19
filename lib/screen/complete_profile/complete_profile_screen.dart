import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String nameRoute = '/complete_profile';
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
        ),
      body: Body(),
    );
  }
}

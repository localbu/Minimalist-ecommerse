import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/screen/splash/components/body.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}

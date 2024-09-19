import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/my_default_button.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenheight * 0.09,
          ),
          Image.asset('assets/images/success.png'),
          Text(
            'Login Success',
            style: TextStyle(
                fontSize: getPropotionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(
                text: 'Back To Home',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          Spacer()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/screen/forgot_password/components/forgot_password_form.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getPropotionateScreenHeight(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenheight * 0.04),
              Text(
                'Forgot Password',
                style: headingStyle
                ),
              SizedBox(height: SizeConfig.screenheight * 0.02),
              const Text(
                'enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenheight * 0.06),
              const ForgotPasswordForm(),
              SizedBox(height: SizeConfig.screenheight * 0.06),
               dontHaveAcountText()
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAcountText() {
    return const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have any Account?'
                  ),
                Text(
                  ' Sign Up',
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                )
              ],
            );
  }
}


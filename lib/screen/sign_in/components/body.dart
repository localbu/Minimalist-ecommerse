import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/social_media_icon.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/screen/sign_in/components/sign_in_form.dart';
import 'package:project_flutter_shop_ui/screen/sign_up/sign_up_screen.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(getPropotionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Welcome',
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenheight * 0.03,
              ),
              const Text(
                'Sign in with your email  & password \nor continue with Social Media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getPropotionateScreenHeight(20),
              ),
              const SignInForm(),
              SizedBox(
                height: getPropotionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaIcon(
                    press: () {},
                    icon: 'assets/icons/google-icon.svg',
                  ),
                  SocialMediaIcon(
                    press: (){}, 
                    icon: 'assets/icons/facebook-2.svg'),
                  SocialMediaIcon(
                    press: (){}, 
                    icon: 'assets/icons/twitter.svg'),
                  
                ],
              ),
              SizedBox(
                    width: getPropotionateScreenHeight(20),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have any Account?'
                    ),
                  GestureDetector(
                    onTap: ()=> Navigator.pushNamed(context, SignUpScreen.routesName),
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/social_media_icon.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/screen/sign_up/components/sign_up_form.dart';
import 'package:project_flutter_shop_ui/size_config.dart';


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenheight * 0.06,
          ),
          Text(
            'Register Account',
            style: headingStyle
          ),
          Text(
            'Complete Your Details or Continue \nwith social media',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenheight * 0.03),
          SignUpForm(),
          SizedBox(height: SizeConfig.screenheight * 0.03,),
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
          Text(
            'By continuing you confirm that you agree \nwith our Term and Condition',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/screen/complete_profile/components/complete_profile_form.dart';
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
        padding: EdgeInsets.symmetric(horizontal: getPropotionateScreenWidth(30)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenheight * 0.06,
              ),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                'Complete your profile data',
                textAlign: TextAlign.center,
              ),
               SizedBox(
                height: SizeConfig.screenheight * 0.06,
              ),
              CompleteProfileForm()
            ],
          ),
        ),
      ),
    );
  }
}

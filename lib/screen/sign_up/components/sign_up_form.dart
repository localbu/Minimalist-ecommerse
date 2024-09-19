import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/custom_suffix_icon.dart';
import 'package:project_flutter_shop_ui/components/error_form.dart';
import 'package:project_flutter_shop_ui/components/my_default_button.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/screen/complete_profile/complete_profile_screen.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? confirmPassword;
  String? email;
  final List<String> errors = [];
  String? password;

  final _formKey = GlobalKey<FormState>();

  TextFormField passwordComfirmationFromField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        //Do something with the value
        if (password == value) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty || errors.contains(kMatchPassError)) {
          return '';
        } else if (value != password) {
          setState(() {
            errors.add(kMatchPassError);
          });
        } 
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Confrim Password',
          labelStyle: TextStyle(color: kTeksColor),
          hintText: 'RE-Enter Your Password',
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Lock.svg',
            size: 14,
          )),
    );
  }

  TextFormField passwordFromField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        setState(() {
          password = value;
        });
        //Do something with the value
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (errors.contains(kPassNullError) && value.length > 8) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 &&
            (!errors.contains(kPassNullError) &&
                !errors.contains(kShortPassError))) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(color: kTeksColor),
          hintText: 'Enter Your Password',
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Lock.svg',
            size: 14,
          )),
    );
  }

  TextFormField emailFromField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'Email',
          labelStyle: TextStyle(color: kTeksColor),
          hintText: 'Enter Your Email',
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Mail.svg',
            size: 18,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            emailFromField(),
            SizedBox(height: getPropotionateScreenHeight(30)),
            passwordFromField(),
            SizedBox(height: getPropotionateScreenHeight(30)),
            passwordComfirmationFromField(),
            SizedBox(height: getPropotionateScreenHeight(20)),
            ErrorForm(errors: errors),
            SizedBox(height: getPropotionateScreenHeight(20)),
            MyDefaultButton(
                text: 'Continue',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }

                  if(errors.isEmpty){
                      Navigator.pushNamed(context, CompleteProfileScreen.nameRoute);
                  }
                })
          ],
        ),
      ),
    );
  }
}

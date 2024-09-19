import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/custom_suffix_icon.dart';
import 'package:project_flutter_shop_ui/components/error_form.dart';
import 'package:project_flutter_shop_ui/components/my_default_button.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  bool valueRemember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            emailFormField(),
            ErrorForm(errors: errors),
            SizedBox(
              height: getPropotionateScreenHeight(20),
            ),
            MyDefaultButton(
                text: "Reset Password",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                })
          ],
        ));
  }

  TextFormField emailFormField() {
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
}

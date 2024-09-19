import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/components/custom_suffix_icon.dart';
import 'package:project_flutter_shop_ui/constant.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({
    super.key,
  });

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? firstName;
  String? lastName;
  int? numberPhone;
  String? address;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (newValue) {},
              onChanged: (value) {},
              obscureText: false,
              decoration: const InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(color: kTeksColor),
                  hintText: 'Enter Your First Name',
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 20,
                  ),
                  suffixIcon: CustomSuffixIcon(
                    icon: 'assets/icons/User Icon.svg',
                    size: 14,
                  )),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:project_flutter_shop_ui/constant.dart';
import 'package:project_flutter_shop_ui/size_config.dart';
  ThemeData themeData() {
    return ThemeData(
      fontFamily: 'Muli',
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: inputDecorationTheme(),
      appBarTheme: appBarDecorationTheme(),
      textTheme: textTheme()
    );
  }

  TextTheme textTheme() {
  return const TextTheme(
    titleMedium: TextStyle(color: kTeksColor),
    bodyMedium: TextStyle(color: kTeksColor),
  );
}

  AppBarTheme appBarDecorationTheme() {
    return const AppBarTheme(
      foregroundColor: Colors.white,
      elevation: 4,
      backgroundColor: kPrimaryColor,
      shadowColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        fontSize: 18,
      )
    );
  }
  InputDecorationTheme inputDecorationTheme() {
    const outlineInputBorder = OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: kPrimaryColor)
                    );
    var textStyle = TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getPropotionateScreenWidth(16),
                      color: kPrimaryColor
                    );
    return InputDecorationTheme(
        labelStyle: textStyle,
                    enabledBorder: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                    border: outlineInputBorder,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
      );
  }


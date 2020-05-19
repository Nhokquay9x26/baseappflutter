import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldApp extends BaseComponent {
  const TextFieldApp(
      {this.labelText,
      this.hintText,
      this.errorText,
      this.obscureText = false,
      this.border,
      this.focusedBorder,
      this.keyboardType,
      this.style,
      this.labelStyle,
      this.hintStyle,
      this.textInputAction,
      this.prefixIcon,
      this.suffixIcon});

  final String labelText;
  final String hintText;
  final String errorText;
  final bool obscureText;
  final InputBorder border;
  final InputBorder focusedBorder;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextStyle style;
  final TextStyle labelStyle;
  final TextStyle hintStyle;

  @override
  Widget buildApp(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
          border: border,
          focusedBorder: focusedBorder,
          labelText: labelText,
          hintText: hintText,
          labelStyle:
              TextStyle(fontSize: font15, color: Colors.grey).merge(labelStyle),
          hintStyle: TextStyle(fontSize: font15).merge(hintStyle),
          suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: COLOR_APP,) : null,
          prefixIcon:
              prefixIcon != null ? Icon(prefixIcon, size: width26, color: Colors.grey) : null,
          focusColor: Colors.red,
          errorText: errorText),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: style,
    );
  }
}

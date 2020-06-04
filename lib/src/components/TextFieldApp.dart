import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldApp extends TextField {
  const TextFieldApp(
      {this.labelText,
      this.hintText,
      this.errorText,
      this.obscureText = false,
      this.border,
      this.focusedBorder,
      this.enabledBorder,
      this.keyboardType,
      this.style,
      this.labelStyle,
      this.hintStyle,
      this.textInputAction,
      this.prefixIcon,
      this.onChange,
      this.controller,
      this.suffixIcon,
      this.validator,
      Key key})
      : super(key: key);

  final String labelText;
  final String hintText;
  final String errorText;
  final bool obscureText;
  final InputBorder border;
  final InputBorder focusedBorder;
  final InputBorder enabledBorder;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextStyle style;
  final TextStyle labelStyle;
  final TextStyle hintStyle;
  final ValueChanged onChange;
  final FormFieldValidator<String> validator;

  @override
  Widget buildApp(BuildContext context) {
    return Container(
      height: height60,
      child: TextFormField(
        key: key,
        validator: validator,
        obscureText: obscureText,
        controller: controller,
        onChanged: onChange,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: COLOR_APP, width: width1),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: width1, color: Colors.grey)),
            enabledBorder: enabledBorder,
            labelText: labelText,
            hintText: hintText,
            labelStyle: TextStyle(fontSize: font15, color: Colors.grey)
                .merge(labelStyle),
            hintStyle: TextStyle(fontSize: font15).merge(hintStyle),
            suffixIcon: suffixIcon != null
                ? Icon(
                    suffixIcon,
                    color: COLOR_APP,
                  )
                : null,
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, size: width26, color: Colors.grey)
                : null,
            focusColor: Colors.red,
            errorText: errorText),
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        style: style,
      ),
    );
  }
}

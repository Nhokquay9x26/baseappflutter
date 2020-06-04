import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:flutter/material.dart';

class ButtonApp extends BaseComponent {
  ButtonApp({this.text, this.style, this.onPressed, this.backgroundColor});

  final String text;
  final TextStyle style;
  final VoidCallback onPressed;
  final Color backgroundColor;

  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return RaisedButton(
        padding: EdgeInsets.only(
            left: width30, right: width30, top: width12, bottom: width12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width10),
        ),
        onPressed: onPressed,
        color: COLOR_APP,
        textColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(
            fontSize: font16,
          ),
        ));
  }
}

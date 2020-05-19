import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'TextApp.dart';

class ButtonApp extends BaseComponent {
  ButtonApp({this.text, this.style});

  final String text;
  final TextStyle style;

  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return RaisedButton(
        elevation: width5, onPressed: () {}, child: TextApp(text));
  }
}

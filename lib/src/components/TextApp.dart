import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:flutter/material.dart';

class TextApp extends BaseComponent {
  const TextApp(this.text, {this.style, this.onTap});

  final String text;
  final TextStyle style;
  final GestureTapCallback onTap;

  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style:
              TextStyle(fontSize: font16, color: Colors.black54).merge(style),
        ));
  }
}

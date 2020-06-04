import 'package:base/src/routers/NavigationServices.dart';
import 'package:base/src/utils/Size.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

abstract class BaseApp extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    init(context);
    return KeyboardDismisser(gestures: [
      GestureType.onTap,
      GestureType.onPanUpdateDownDirection,
    ], child: buildApp(context));
  }

  Widget buildApp(BuildContext context);
}

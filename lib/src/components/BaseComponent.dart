import 'package:base/src/utils/Size.dart';
import 'package:flutter/material.dart';

abstract class BaseComponent extends StatelessWidget {
  const BaseComponent();

  @override
  Widget build(BuildContext context) {
    init(context);
    return buildApp(context);
  }

  Widget buildApp(BuildContext context);
}

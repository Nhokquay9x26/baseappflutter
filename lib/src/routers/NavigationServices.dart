import 'package:flutter/material.dart';

BuildContext buildContext;

void initNavigation(BuildContext context) {
  buildContext = context;
}

goToPageName(String page) {
  return Navigator.pushNamed(buildContext, page);
}

goBack() {
  return Navigator.pop(buildContext);
}

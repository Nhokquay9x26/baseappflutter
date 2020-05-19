import 'package:base/src/screens/home/Home2.dart';
import 'package:base/src/screens/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class AppRoutes {
  static Router router = Router();

  static Handler _home = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          MenuDashboardPage());

  static Handler _page1 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage(
//        params['param1'][0],
//        params['param2'][0],
      ));

  static Handler _page2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage(
//        params['param1'][0],
//        params['param1'][1],
//        params['param2'][0],
      ));

  static void setupRouter() {
    router.define(
      '/',
      handler: _home,
    );

    router.define(
      'page1/:param1/:param2',
      handler: _page1,
      transitionType: TransitionType.inFromBottom,
    );

    router.define(
      'page2',
      handler: _page2,
      transitionType: TransitionType.inFromLeft,
    );
  }
}
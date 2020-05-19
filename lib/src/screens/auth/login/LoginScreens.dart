import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/components/TextFieldApp.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: width20, right: width20),
          child: Stack(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "lib/res/images/logo.png",
                  width: width100,
                  height: width100,
                ),
                SizedBox(
                  height: height30,
                ),
                TextApp(
                  tr("welcome_back"),
                  style: TextStyle(fontSize: font24),
                ),
                SizedBox(
                  height: height40,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: width3,
                            blurRadius: width5,
                            offset: Offset(0, width2))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(width10))),
                  child: Column(
                    children: <Widget>[
                      TextFieldApp(
                        labelText: tr("auth.email"),
                        hintText: 'example@gmail.com',
                        prefixIcon: Icons.account_circle,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: COLOR_APP)),
                      ),
                      TextFieldApp(
                        obscureText: true,
                        prefixIcon: Icons.lock,
                        labelText: tr("auth.password"),
                        border: InputBorder.none,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height30,
                ),
                TextApp(tr("auth.forgot_password")),
                ButtonApp(text: tr("auth.login")),
              ],
            ),
            Positioned(
              top: width10,
              right: 0,
              child: TextApp(
                tr("skip"),
                onTap: () {},
                style: TextStyle(color: COLOR_APP, fontSize: font15),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

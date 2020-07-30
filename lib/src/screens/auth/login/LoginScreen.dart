import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Images.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/constant/Constant.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/screens/auth/login/LoginViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class LoginScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<LoginViewModel>.withConsumer(
      viewModelBuilder: () => LoginViewModel(context),
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: width20, right: width20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        logo,
                        width: width200,
                        height: width150,
                      ),
                      SizedBox(
                        height: height20,
                      ),
                      Form(
                        onChanged: () {
                          model.setIsValid();
                        },
                        autovalidate: true,
                        key: model.formKey,
                        child: Column(
                          children: <Widget>[
                            InputUsername(),
                            SizedBox(
                              height: height20,
                            ),
                            InputPassword(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height30,
                      ),
                      TextApp(
                        S.of(context).forgot_password,
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouterName.forgotPassword);
                          // TODO Navigation Forgot password
                        },
                      ),
                      SizedBox(
                        height: height30,
                      ),
                      ButtonApp(
                        text: S.of(context).login,
                        onPressed: model.isValid
                            ? () async {
                                model.login();
                              }
                            : null,
                      ),
                      SizedBox(
                        height: height30,
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputUsername extends ProviderWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).username.toLowerCase());
        }
        return null;
      },
      controller: model.controllerUsername,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          labelText: S.of(context).username,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

class InputPassword extends ProviderWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).password.toLowerCase());
        } else if (value.length < MIN_LENGTH_PASSWORD) {
          return S.of(context).error_password_min_max;
        }
        return null;
      },
      controller: model.controllerPassword,
      obscureText: true,
      maxLength: MAX_LENGTH_PASSWORD,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: S.of(context).password,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

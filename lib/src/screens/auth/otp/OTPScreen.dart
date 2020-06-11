import 'dart:math';

import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Images.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/constant/Constant.dart';
import 'package:base/src/screens/auth/otp/OTPViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class OTPScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<OTPViewModel>.withConsumer(
      viewModelBuilder: () => OTPViewModel(context),
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: TextApp(
          S.of(context).forgot_password,
          style: TextStyle(color: Colors.white),
        )),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: width20, right: width20),
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
                        autovalidate: true,
                        key: model.formKey,
                        onChanged: () {
                          model.setIsValid();
                        },
                        child: Column(
                          children: <Widget>[
                            InputOTP(),
                            SizedBox(
                              height: height20,
                            ),
                            InputPassword(),
                            SizedBox(
                              height: height20,
                            ),
                            InputRePassword(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height30,
                      ),
                      ButtonApp(
                        text: S.of(context).send_password,
                        onPressed: model.isValid
                            ? () async {
                                model.resetPassword();
                              }
                            : null,
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

class InputOTP extends ProviderWidget<OTPViewModel> {
  @override
  Widget build(BuildContext context, OTPViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (otp) {
        if (otp.isEmpty) {
          return S.of(context).error_invalid(S.of(context).otp.toLowerCase());
        }
        return null;
      },
      controller: model.controllerOtp,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.input),
          labelText: S.of(context).otp,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

class InputPassword extends ProviderWidget<OTPViewModel> {
  @override
  Widget build(BuildContext context, OTPViewModel model) {
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

class InputRePassword extends ProviderWidget<OTPViewModel> {
  @override
  Widget build(BuildContext context, OTPViewModel model) {
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
      controller: model.controllerRePassword,
      obscureText: true,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: S.of(context).re_password,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

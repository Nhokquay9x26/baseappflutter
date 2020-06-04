import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/screens/auth/forgot_password/ForgotPasswordViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ForgotPasswordScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<ForgotPasswordViewModel>.withConsumer(
      viewModelBuilder: () => ForgotPasswordViewModel(context),
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: TextApp(
          S.of(context).forgot_password,
          style: TextStyle(color: Colors.white),
        )),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: width20, right: width20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "lib/res/images/logo.jpeg",
                    width: width200,
                    height: width150,
                  ),
                  SizedBox(
                    height: height20,
                  ),
                  Form(key: model.formKey, child: InputPhone()),
                  SizedBox(
                    height: height30,
                  ),
                  ButtonApp(
                    text: S.of(context).send_otp,
                    onPressed: () {
                      // TODO Navigation Login
                      Navigator.pushNamed(context, RouterName.otp);
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class InputPhone extends ProviderWidget<ForgotPasswordViewModel> {
  @override
  Widget build(BuildContext context, ForgotPasswordViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (phone) {
        if (phone.isEmpty) {
          return S.of(context).error_invalid(S.of(context).phone.toLowerCase());
        }
        return null;
      },
      controller: model.controllerPhone,
      obscureText: true,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone_iphone),
          labelText: S.of(context).phone,
          focusedBorder: focusedBorder,
          hintText: '0981234567',
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

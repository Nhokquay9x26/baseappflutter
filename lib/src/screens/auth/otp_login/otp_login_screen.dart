import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Images.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/auth/otp_login/otp_login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class OTPLoginScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<OTPLoginViewModel>.withConsumer(
      viewModelBuilder: () => OTPLoginViewModel(context),
      onModelReady: (model) => model.initialise(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: TextApp(
          S.of(context).login_otp,
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
                          child: InputOTPLogin()),
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
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputOTPLogin extends ProviderWidget<OTPLoginViewModel> {
  @override
  Widget build(BuildContext context, OTPLoginViewModel model) {
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

import 'package:base/main.dart';
import 'package:base/src/api/api_service.dart';
import 'package:base/src/api/body/OTPBody.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../mainProvider.dart';

class OTPLoginViewModel extends ChangeNotifier {
  TextEditingController controllerOtp = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Api apiService = locator<Api>();
  final sharePrefs = locator<SharePrefs>();
  bool isValid = false;

  BuildContext context;

  OTPLoginViewModel(this.context);

  void initialise() {
    controllerOtp.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
  }

  void setIsValid() {
    this.isValid = formKey.currentState.validate();
    notifyListeners();
  }

  void login() async {
    final otp = controllerOtp.text;
    final body = OTPBody();
    body.otp = otp;
    openLoadingDialog(context);
    await apiService.client
        .postValidateToken(body)
        .then((value) => {
              Navigator.pop(context),
              if (value.meta.status)
                {
                  sharePrefs.token = value.data.token,
                  Provider.of<MainProvider>(context, listen: false)
                      .authResponse = value.data,
                  Navigator.pushNamedAndRemoveUntil(
                      context, RouterName.home, (_) => false)
                }
              else
                {showLongToast(value.meta.message)}
            })
        .catchError((onError) =>
            {Navigator.pop(context), print('error ${onError.toString()}')});
  }
}

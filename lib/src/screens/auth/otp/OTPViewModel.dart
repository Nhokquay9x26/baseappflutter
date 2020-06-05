import 'package:base/main.dart';
import 'package:base/src/api/api_service.dart';
import 'package:base/src/api/body/OTPBody.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:flutter/material.dart';

class OTPViewModel extends ChangeNotifier {
  TextEditingController controllerOtp = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerRePassword = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Api apiService = locator<Api>();
  bool isValid = false;

  BuildContext context;

  OTPViewModel(this.context);

  void initialise() {
    controllerPassword.text = "123456";
    controllerRePassword.text = "123456";
    controllerOtp.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
    controllerPassword.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
    controllerRePassword.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
  }

  void setIsValid() {
    this.isValid = formKey.currentState.validate();
    notifyListeners();
  }

  void resetPassword() async {
    final otp = controllerOtp.text;
    final password = controllerPassword.text;
    final body = OTPBody();
    body.otp = otp;
    body.password = password;
    await apiService.client
        .postValidatePassword(body)
        .then((value) => {
              if (value.meta.status)
                {
                  showLongToast(value.meta.message),
                  Navigator.pushReplacementNamed(context, RouterName.login)
                }
              else
                {showLongToast(value.meta.message)}
            })
        .catchError((onError) => print('error ${onError.toString()}'));
  }
}

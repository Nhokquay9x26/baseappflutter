import 'package:base/main.dart';
import 'package:base/src/api/api_service.dart';
import 'package:base/src/api/body/PhoneBody.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  TextEditingController controllerPhone = TextEditingController();
  BuildContext context;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Api apiService = locator<Api>();
  bool isValid = false;

  ForgotPasswordViewModel(this.context);

  void initialise() {
    controllerPhone.text = "0356858608";
    controllerPhone.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
  }

  void setIsValid() {
    this.isValid = formKey.currentState.validate();
    notifyListeners();
  }

  void sendOTP() async {
    final phone = controllerPhone.text;
    final body = PhoneBody();
    body.phone = phone;
    await apiService.client
        .postValidatePhone(body)
        .then((value) => {
              if (value.meta.status)
                {Navigator.pushNamed(context, RouterName.otp)}
              else
                {showLongToast(value.meta.message)}
            })
        .catchError((onError) => print('error ${onError.toString()}'));
  }
}

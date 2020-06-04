import 'package:base/generated/l10n.dart';
import 'package:flutter/material.dart';

class OTPViewModel extends ChangeNotifier {
  TextEditingController controllerOtp = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerRePassword = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  BuildContext context;

  OTPViewModel(this.context);

  void initialise() {
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
}

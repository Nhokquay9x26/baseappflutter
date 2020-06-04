import 'package:flutter/material.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  TextEditingController controllerPhone = TextEditingController();
  BuildContext context;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  ForgotPasswordViewModel(this.context);

  void initialise() {
    controllerPhone.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
  }
}

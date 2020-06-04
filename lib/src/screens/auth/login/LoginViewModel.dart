import 'dart:convert';

import 'package:base/src/api/ApiService.dart';
import 'package:base/src/db/model/AuthModel.dart';
import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isValid = false;
  BuildContext context;

  LoginViewModel(this.context);

  void initialise() {
    controllerUsername.addListener(() {
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
  }

  void setIsValid() {
    this.isValid = formKey.currentState.validate();
    notifyListeners();
  }

  void login() async {
    final username = controllerUsername.text;
    final password = controllerPassword.text;
    final authModel = AuthModel();
    authModel.login = username;
    authModel.password = password;
    authModel.imei = "012345544";
    authModel.phone_info = "iphone6";
    await ApiService.login(authModel, onSuccess: (data) {
      print("Data " + jsonDecode(data));
    }, onError: (msg) {
      print(msg);
    });
//    Provider.of<ApiService>(context, listen: false)
//        .postLogin()
//        .then((value) => {print(value)})
//        .catchError((onError) => {print(onError.toString())});
//    Navigator.pushNamed(context, RouterName.home);
  }
}

import 'package:base/main.dart';
import 'package:base/mainProvider.dart';
import 'package:base/src/api/api_service.dart';
import 'package:base/src/api/body/AuthBody.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginViewModel extends ChangeNotifier {
  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isValid = false;
  BuildContext context;
  final Api apiService = locator<Api>();

  LoginViewModel(this.context);

  void initialise() {
    controllerUsername.text = 'test_mr';
    controllerPassword.text = '123123';
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
    final deviceData =
        Provider.of<MainProvider>(context, listen: false).deviceData;
    final username = controllerUsername.text;
    final password = controllerPassword.text;
    final body = AuthBody();
    body.login = username;
    body.password = password;
    body.imei = "012345544";
    body.phone_info = "iphone6";
    await apiService.client
        .postLogin(body)
        .then((value) => {
              if (value.meta.status)
                {Navigator.pushReplacementNamed(context, RouterName.home)}
              else
                {showLongToast(value.meta.message)}
            })
        .catchError((onError) => print('error ${onError.toString()}'));
  }
}

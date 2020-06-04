import 'package:base/generated/l10n.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class RequestQuitViewModel extends ChangeNotifier {
  BuildContext context;
  String date;
  TextEditingController controllerReason = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RequestQuitViewModel(this.context);

  void initialise() {
    date = S.of(this.context).choose_date;
    controllerReason.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
  }

  void setDate(date) {
    this.date = TimeUtils.formatTime(date);
    notifyListeners();
  }
}

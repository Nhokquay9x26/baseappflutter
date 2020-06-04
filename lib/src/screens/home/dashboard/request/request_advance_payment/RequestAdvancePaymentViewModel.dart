import 'package:flutter/material.dart';

class RequestAdvancePaymentViewModel extends ChangeNotifier {
  TextEditingController controllerAmount = TextEditingController();
  TextEditingController controllerContent = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String categoryAdvancePaymentSelect;
  List<String> categoryAdvancePayments;
  BuildContext context;

  RequestAdvancePaymentViewModel(this.context);

  void initialise() {
    controllerAmount.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
    controllerContent.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
    categoryAdvancePayments = ["Loại 1", "Loại 2"];
    categoryAdvancePaymentSelect = categoryAdvancePayments[0];
  }

  void setCategoryAdvancePayment(String categoryAdvancePayment) {
    categoryAdvancePaymentSelect = categoryAdvancePayment;
    notifyListeners();
  }
}

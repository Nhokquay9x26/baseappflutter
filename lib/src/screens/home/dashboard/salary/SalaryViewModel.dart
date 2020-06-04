import 'package:base/generated/l10n.dart';
import 'package:base/src/api/response/SalaryResponse.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class SalaryViewModel extends ChangeNotifier {
  String month;
  BuildContext context;

  List<SalaryResponse> items = [
    SalaryResponse("Salary 1", "Salary", 10000000),
    SalaryResponse("Salary 2", "Salary", 10000),
    SalaryResponse("Salary 3", "Salary", 10000),
    SalaryResponse("Salary 4", "Salary", 10000),
    SalaryResponse("Salary 5", "Salary", 10000),
    SalaryResponse("Salary 6", "Salary", 10000),
    SalaryResponse("Salary 7", "Salary", 10000),
  ];

  SalaryViewModel(this.context);

  void initialise() {
    month = S.of(this.context).choose_month;
  }

  void setMonth(month){
    this.month = TimeUtils.formatMonthYear(month);
    notifyListeners();
  }
}

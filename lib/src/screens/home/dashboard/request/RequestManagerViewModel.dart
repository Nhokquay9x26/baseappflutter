import 'package:base/generated/l10n.dart';
import 'package:base/src/api/response/RequestManagerResponse.dart';
import 'package:base/src/constant/Constant.dart';
import 'package:base/src/db/model/CategoryRequestModel.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class RequestManagerViewModel extends ChangeNotifier {
  BuildContext context;
  List<CategoryRequestModel> requestSelects;
  String requestSelect;
  String date;
  List<RequestManagerResponse> items = [
    RequestManagerResponse(
        "Request 1", "Description is the description", "DOING"),
    RequestManagerResponse(
        "Request 2", "Description is the description", "DOING"),
    RequestManagerResponse(
        "Request 3", "Description is the description", "DOING"),
    RequestManagerResponse(
        "Request 4", "Description is the description", "DOING"),
    RequestManagerResponse(
        "Request 5", "Description is the description", "DOING"),
    RequestManagerResponse(
        "Request 6", "Description is the description", "DOING"),
  ];

  RequestManagerViewModel(this.context);

  void initialise() {
    requestSelects = [
      CategoryRequestModel(
          S.of(context).request_quit, "", TYPE_CATEGORY_REQUEST.QUIT),
      CategoryRequestModel(
          S.of(context).request_work_late, "", TYPE_CATEGORY_REQUEST.WORK_LATE),
      CategoryRequestModel(
          S.of(context).request_pay, "", TYPE_CATEGORY_REQUEST.PAY),
      CategoryRequestModel(S.of(context).request_advance_payment, "",
          TYPE_CATEGORY_REQUEST.ADVANCE_PAYMENT),
      CategoryRequestModel(
          S.of(context).request_holiday, "", TYPE_CATEGORY_REQUEST.HOLIDAY),
    ];
    requestSelect = requestSelects[0].name;
    date = S.of(this.context).choose_date;
  }

  void setRequestSelect(value) {
    requestSelect = value;
    notifyListeners();
  }

  void setDate(date) {
    this.date = TimeUtils.formatTime(date);
    notifyListeners();
  }

  void choiceAction(CategoryRequestModel choice) {
    switch (choice.type) {
      case TYPE_CATEGORY_REQUEST.QUIT:
        Navigator.pushNamed(context, RouterName.requestQuit);
        break;
      case TYPE_CATEGORY_REQUEST.WORK_LATE:
        Navigator.pushNamed(context, RouterName.requestWorkLate);
        break;
      case TYPE_CATEGORY_REQUEST.PAY:
        Navigator.pushNamed(context, RouterName.requestPay);
        break;
      case TYPE_CATEGORY_REQUEST.ADVANCE_PAYMENT:
        Navigator.pushNamed(context, RouterName.requestAdvancePayment);
        break;
      case TYPE_CATEGORY_REQUEST.HOLIDAY:
        Navigator.pushNamed(context, RouterName.requestHoliday);
        break;
    }
  }
}

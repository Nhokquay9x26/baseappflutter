import 'package:base/src/api/response/HolidayManagerResponse.dart';
import 'package:flutter/material.dart';

class HolidayManagerViewModel extends ChangeNotifier {
  BuildContext context;

  List<HolidayManagerResponse> items = [
    HolidayManagerResponse("Holiday 1", 10, 1),
    HolidayManagerResponse("Holiday 2", 3, 2),
    HolidayManagerResponse("Holiday 3", 3, 0),
  ];

  HolidayManagerViewModel(this.context);

  void initialise() {}
}

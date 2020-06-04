import 'package:base/generated/l10n.dart';
import 'package:base/src/api/response/ProductResponse.dart';
import 'package:base/src/api/response/SupperMarketResponse.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class ReportSaleViewModel extends ChangeNotifier {
  BuildContext context;

  ReportSaleViewModel(this.context);

  List<SupperMarketResponse> marketSelects = [
    SupperMarketResponse(0, "BigC Đà Nẵng"),
    SupperMarketResponse(1, "BigC Đà Nẵng 1"),
    SupperMarketResponse(2, "BigC Đà Nẵng 2"),
    SupperMarketResponse(3, "BigC Đà Nẵng 3"),
    SupperMarketResponse(4, "BigC Đà Nẵng 4"),
  ];

  String marketSelect;

  int page = 1;
  List<ProductResponse> items = [
    ProductResponse(
        1,
        "Product 123 kajdsklajksdjkasjdkajskdjkas askjdkasjkdjkasjkajsdkjasd",
        1,
        2000000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
    ProductResponse(2, "Product 2", 1, 50000),
  ];

  String date;

  void initialise() {
    date = S.of(this.context).choose_date;
    marketSelect = marketSelects[0].name;
  }

  void setMarketSelect(value) {
    marketSelect = value;
    notifyListeners();
  }

  void setDate(date) {
    this.date = TimeUtils.formatTime(date);
    notifyListeners();
  }
}

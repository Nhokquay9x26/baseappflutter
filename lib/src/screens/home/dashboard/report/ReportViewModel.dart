import 'package:base/generated/l10n.dart';
import 'package:base/src/db/model/ReportModel.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:flutter/material.dart';

class ReportViewModel extends ChangeNotifier {
  BuildContext context;
  int kpi = 80;
  List<ReportModel> menuReport;

  ReportViewModel(this.context);

  void initialise() {
    menuReport = [
      ReportModel(
          icon: Icons.shopping_cart, title: S.of(this.context).report_sale),
      ReportModel(
          icon: Icons.remove_red_eye, title: S.of(this.context).report_display),
      ReportModel(
          icon: Icons.face, title: S.of(this.context).report_competitor),
      ReportModel(
          icon: Icons.rate_review, title: S.of(this.context).report_approach),
    ];
  }

  void onPressMenu(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, RouterName.reportSale);
    }
  }
}

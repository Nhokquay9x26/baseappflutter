import 'package:base/generated/l10n.dart';
import 'package:base/res/images/svg/icon_font_icons.dart';
import 'package:base/src/api/response/auth_response.dart';
import 'package:base/src/db/model/MenuModel.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../mainProvider.dart';

class DashboardViewModel extends ChangeNotifier {
  BuildContext context;
  int kpi = 80;
  List<MenuModel> menuDashboard;
  AuthResponse authResponse;
  final sharePrefs = locator<SharePrefs>();

  DashboardViewModel(this.context);

  void initialise() {
    authResponse =
        Provider.of<MainProvider>(context, listen: false).authResponse;
    print("token ${sharePrefs.token}");
    menuDashboard = [
      MenuModel(icon: IconFont.wallet, title: S.of(this.context).salary),
      MenuModel(
          icon: IconFont.clipboard_list, title: S.of(this.context).report),
      MenuModel(icon: Icons.work, title: S.of(this.context).field_work),
      MenuModel(
          icon: Icons.rate_review,
          title: S.of(this.context).manager_requirement),
      MenuModel(
          icon: Icons.notifications_active,
          title: S.of(this.context).notification_company),
      MenuModel(icon: Icons.hotel, title: S.of(this.context).manager_holiday),
    ];
  }

  void onPressMenu(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, RouterName.salary);
        break;
      case 1:
        Navigator.pushNamed(context, RouterName.report);
        break;
      case 3:
        Navigator.pushNamed(context, RouterName.requestManager);
        break;
      case 5:
        Navigator.pushNamed(context, RouterName.holidayManager);
        break;
    }
  }
}

import 'package:base/generated/l10n.dart';
import 'package:base/res/images/svg/icon_font_icons.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/DashboardViewModel.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider_architecture/provider_architecture.dart';

class DashBoardScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<DashboardViewModel>.withConsumer(
        viewModelBuilder: () => DashboardViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).dashboard,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(width10),
                child: Column(
                  children: <Widget>[
                    HeaderProfileWidget(),
                    SizedBox(
                      height: width20,
                    ),
                    KPIWidget(),
                    SizedBox(
                      height: width20,
                    ),
                    MenuWidget()
                  ],
                ),
              ),
            )));
  }
}

class HeaderProfileWidget extends ProviderWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              IconFont.calendar,
              size: width30,
              color: COLOR_APP,
            ),
            SizedBox(
              height: width10,
            ),
            TextApp(
              S.of(context).holiday_count(model.authResponse.holiday_total.toString()),
              style: TextStyle(fontSize: font12),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.account_circle,
              size: width50,
            ),
            TextApp(
              model.authResponse.name,
              style: TextStyle(fontSize: font16),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.hourglass_full,
              size: width30,
              color: COLOR_APP,
            ),
            SizedBox(
              height: width10,
            ),
            TextApp(
              S.of(context).score(model.authResponse.point),
              style: TextStyle(fontSize: font12),
            )
          ],
        )
      ],
    );
  }
}

class KPIWidget extends ProviderWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return Container(
      margin: EdgeInsets.only(
          left: width10, right: width10, top: width20, bottom: width20),
      child: Row(
        children: <Widget>[
          TextApp(S.of(context).kpi),
          Padding(
            padding: EdgeInsets.only(left: width15),
            child: LinearPercentIndicator(
              width: width280,
              animation: true,
              lineHeight: width18,
              animationDuration: 1000,
              percent: model.authResponse.kpi_achieve /
                  (model.authResponse.kpi_total | 100),
              center: TextApp(
                "${model.authResponse.kpi_achieve} %",
                style: TextStyle(fontSize: font12, color: Colors.white),
              ),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: COLOR_APP,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends ProviderWidget<DashboardViewModel> {
  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonMenu(0),
            ButtonMenu(1),
            ButtonMenu(2),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonMenu(3),
            ButtonMenu(4),
            ButtonMenu(5),
          ],
        )
      ],
    );
  }
}

class ButtonMenu extends ProviderWidget<DashboardViewModel> {
  ButtonMenu(this.index);

  final int index;

  @override
  Widget build(BuildContext context, DashboardViewModel model) {
    // TODO: implement build
    return Container(
      height: width110,
      width: width110,
      margin: EdgeInsets.only(bottom: width20),
      child: RaisedButton(
        padding: EdgeInsets.all(width10),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width5),
        ),
        onPressed: () {
          model.onPressMenu(index);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              model.menuDashboard[index].icon,
              color: COLOR_APP,
              size: width30,
            ),
            SizedBox(height: width5),
            TextApp(
              model.menuDashboard[index].title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: font14),
            )
          ],
        ),
      ),
    );
  }
}

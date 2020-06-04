import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/report/ReportViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ReportScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<ReportViewModel>.withConsumer(
        viewModelBuilder: () => ReportViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).report,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(width10),
                child: Column(
                  children: <Widget>[MenuWidget()],
                ),
              ),
            )));
  }
}

class MenuWidget extends ProviderWidget<ReportViewModel> {
  @override
  Widget build(BuildContext context, ReportViewModel model) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonMenu(0),
            ButtonMenu(1),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonMenu(2),
            ButtonMenu(3),
          ],
        )
      ],
    );
  }
}

class ButtonMenu extends ProviderWidget<ReportViewModel> {
  ButtonMenu(this.index);

  final int index;

  @override
  Widget build(BuildContext context, ReportViewModel model) {
    // TODO: implement build
    return Container(
      height: width170,
      width: width170,
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
              model.menuReport[index].icon,
              color: COLOR_APP,
              size: width40,
            ),
            SizedBox(height: width5),
            TextApp(
              model.menuReport[index].title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: font16),
            )
          ],
        ),
      ),
    );
  }
}

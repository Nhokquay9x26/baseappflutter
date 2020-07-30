import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/calendar/CalendarViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class CalendarScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<CalendarViewModel>.withConsumer(
        viewModelBuilder: () => CalendarViewModel(context),
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
            ))));
  }
}

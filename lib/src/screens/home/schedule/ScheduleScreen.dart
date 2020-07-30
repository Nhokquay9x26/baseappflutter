import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/schedule/ScheduleViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ScheduleScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<ScheduleViewModel>.withConsumer(
        viewModelBuilder: () => ScheduleViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).schedule,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
              margin: EdgeInsets.all(width10),
            ))));
  }
}

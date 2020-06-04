import 'package:base/generated/l10n.dart';
import 'package:base/res/images/svg/icon_font_icons.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/screens/home/HomeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HomeScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<HomeViewModel>.withConsumer(
        viewModelBuilder: () => HomeViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              body: model.children[model.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: model.onChangeTab,
                currentIndex: model.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard),
                      title: Text(S.of(context).dashboard)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.timer),
                      title: Text(S.of(context).check_in_out)),
                  BottomNavigationBarItem(
                      icon: Icon(IconFont.calendar),
                      title: Text(S.of(context).schedule)),
                  BottomNavigationBarItem(
                      icon: Icon(IconFont.clipboard_list),
                      title: Text(S.of(context).report)),
                ],
              ),
            ));
  }
}

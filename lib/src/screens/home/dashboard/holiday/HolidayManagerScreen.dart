import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/holiday/HolidayManagerItem.dart';
import 'package:base/src/screens/home/dashboard/holiday/HolidayManagerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class HolidayManagerScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<HolidayManagerViewModel>.withConsumer(
        viewModelBuilder: () => HolidayManagerViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).holiday_infor,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.all(width5),
              child: Column(
                children: <Widget>[
                  Container(
                    color: COLOR_APP,
                    height: height45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: TextApp(
                              S.of(context).holiday_category,
                              style: TextStyle(
                                  fontSize: font13, color: Colors.white),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.white,
                          width: width1,
                        ),
                        Expanded(
                            child: Center(
                          child: TextApp(
                            S.of(context).holiday_total,
                            style: TextStyle(
                                fontSize: font13, color: Colors.white),
                          ),
                        )),
                        VerticalDivider(
                          color: Colors.white,
                          width: width1,
                        ),
                        Expanded(
                            child: Center(
                                child: TextApp(
                          S.of(context).holiday_used,
                          style:
                              TextStyle(fontSize: font13, color: Colors.white),
                        ))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (ScrollNotification scrollInfo) {
                        return null;
                      },
                      child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: COLOR_APP,
                          height: width1,
                        ),
                        itemCount: model.items.length,
                        itemBuilder: (context, index) {
                          return HolidayManagerItem(
                            index: index,
                            item: model.items[index],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ))));
  }
}

import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/salary/SalaryViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

import 'SalaryItem.dart';

class SalaryScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<SalaryViewModel>.withConsumer(
        viewModelBuilder: () => SalaryViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).salary,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.all(width5),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.all(Radius.circular(width10)),
                        border:
                            Border.all(color: Colors.black12, width: width1)),
                    margin: EdgeInsets.only(top: width10, bottom: width20),
                    padding: EdgeInsets.only(
                        top: width5,
                        bottom: width5,
                        left: width15,
                        right: width15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextApp(model.month),
                        InkWell(
                          child: Icon(Icons.arrow_drop_down),
                          onTap: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                maxTime: DateTime.now(), onConfirm: (date) {
                              model.setMonth(date);
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.vi);
                          },
                        )
                      ],
                    ),
                  ),
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
                              S.of(context).salary_name,
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
                            S.of(context).salary_category,
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
                          S.of(context).salary_amount,
                          style:
                              TextStyle(fontSize: font13, color: Colors.white),
                        ))),
                      ],
                    ),
                  ),
                  Expanded(
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (ScrollNotification scrollInfo) {},
                      child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: COLOR_APP,
                          height: width1,
                        ),
                        itemCount: model.items.length,
                        itemBuilder: (context, index) {
                          return SalaryItem(
                            index: index,
                            item: model.items[index],
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: width10, bottom: width10),
                    alignment: Alignment.bottomRight,
                    child: TextApp(S.of(context).total(10000),
                        textAlign: TextAlign.right),
                  ),
                ],
              ),
            ))));
  }
}

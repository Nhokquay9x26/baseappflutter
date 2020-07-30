import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/screens/home/dashboard/report/report_sale/ReportSaleItem.dart';
import 'package:base/src/screens/home/dashboard/report/report_sale/ReportSaleViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

class ReportSaleScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<ReportSaleViewModel>.withConsumer(
        viewModelBuilder: () => ReportSaleViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).report_sale,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(width10),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: TextApp(S.of(context).super_market)),
                        Expanded(
                          flex: 3,
                          child: CustomDropdownButton(
                            hint: TextApp(model.marketSelect),
                            value: model.marketSelect,
                            items: model.marketSelects.map((value) {
                              return DropdownMenuItem(
                                child: Text(value.name),
                                value: value.name,
                              );
                            }).toList(),
                            onChanged: (value) {
                              print(value);
                              model.setMarketSelect(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width10,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(flex: 1, child: TextApp(S.of(context).date)),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(width10)),
                                border: Border.all(
                                    color: Colors.black12, width: width1)),
                            padding: EdgeInsets.only(
                                top: width5,
                                bottom: width5,
                                left: width10,
                                right: width10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextApp(model.date),
                                InkWell(
                                  child: Icon(Icons.arrow_drop_down),
                                  onTap: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        maxTime: DateTime.now(),
                                        onConfirm: (date) {
                                      model.setDate(date);
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.vi);
                                  },
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: width10,
                    ),
                    ButtonApp(
                      text: S.of(context).add_product,
                      onPressed: () {
                        Navigator.pushNamed(context, RouterName.addReportSale);
                      },
                    ),
                    SizedBox(
                      height: width10,
                    ),
                    Container(
                      height: height45,
                      color: COLOR_APP,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Center(
                              child: TextApp(
                                S.of(context).name_product,
                                textAlign: TextAlign.center,
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
                              S.of(context).amount_product,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: font13, color: Colors.white),
                            ),
                          )),
                          VerticalDivider(
                            color: Colors.white,
                            width: width1,
                          ),
                          Expanded(
                              flex: 2,
                              child: Center(
                                  child: TextApp(
                                S.of(context).money_product,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: font13, color: Colors.white),
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
                            return ReportSaleItem(
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
                      child: TextApp(S.of(context).total(10),
                          textAlign: TextAlign.right),
                    ),
                    ButtonApp(
                      text: S.of(context).send_report,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            )));
  }
}

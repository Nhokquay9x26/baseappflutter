import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/api/response/ProductResponse.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/utils/NumberUtils.dart';
import 'package:flutter/material.dart';

class ReportSaleItem extends BaseComponent {
  int index;
  ProductResponse item;

  ReportSaleItem({this.index, this.item});

  @override
  Widget buildApp(BuildContext context) {
    return Container(
      height: height45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(width2),
              child: Center(
                child: TextApp(
                  item.name,
                  style: TextStyle(fontSize: font14, color: Colors.black),
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(width2),
              child: Center(
                child: TextApp(
                  item.amount.toString(),
                  style: TextStyle(fontSize: font14, color: Colors.black),
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(width2),
              child: Center(
                child: TextApp(
                  NumberUtils.formatMoney(item.money),
                  style: TextStyle(fontSize: font14, color: Colors.black),
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
        ],
      ),
    );
  }
}

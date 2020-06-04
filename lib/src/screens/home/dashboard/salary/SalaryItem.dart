import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/api/response/SalaryResponse.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/utils/NumberUtils.dart';
import 'package:flutter/material.dart';

class SalaryItem extends BaseComponent {
  int index;
  SalaryResponse item;

  SalaryItem({this.index, this.item});

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
            flex: 2,
            child: Center(
              child: TextApp(
                item.name,
                style: TextStyle(fontSize: font14, color: Colors.black),
              ),
            ),
          ),
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
          Expanded(
            child: Center(
              child: TextApp(
                item.category,
                style: TextStyle(fontSize: font14, color: Colors.black),
              ),
            ),
          ),
          VerticalDivider(
            color: COLOR_APP,
            width: width1,
          ),
          Expanded(
            child: Center(
              child: TextApp(
                NumberUtils.formatMoney(item.salary),
                style: TextStyle(fontSize: font14, color: Colors.black),
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
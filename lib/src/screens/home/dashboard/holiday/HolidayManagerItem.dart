import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/api/response/HolidayManagerResponse.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:flutter/material.dart';

class HolidayManagerItem extends BaseComponent {
  int index;
  HolidayManagerResponse item;

  HolidayManagerItem({this.index, this.item});

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
                item.total.toString(),
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
                item.used.toString(),
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

import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/api/response/CheckInOutModel.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckInOutItem extends BaseComponent {
  int index;
  CheckInOutModel item;

  CheckInOutItem({this.index, this.item});

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
            child: Center(
              child: TextApp(
                item.month,
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
                item.missCheckIn.toString(),
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
                item.missCheckOut.toString(),
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
                item.missCheckInOut.toString(),
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

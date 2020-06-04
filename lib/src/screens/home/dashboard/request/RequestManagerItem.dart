import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/api/response/RequestManagerResponse.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:flutter/material.dart';

class RequestManagerItem extends BaseComponent {
  int index;
  RequestManagerResponse item;

  RequestManagerItem({this.index, this.item});

  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return Container(
      margin: EdgeInsets.all(width5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextApp(
            item.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextApp(
            item.description,
          )
        ],
      ),
    );
  }
}

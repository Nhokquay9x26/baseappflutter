import 'package:base/src/api/response/SurveryResponse.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:flutter/material.dart';

class SurveryItem extends BaseComponent {
  int index;
  SurveryResponse item;

  SurveryItem({this.index, this.item});

  @override
  Widget buildApp(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        TextApp(item.question),
        RadioListTile(
          value: item.answerA,
          title: Text(item.answerA),
          onChanged: (String value) {}, groupValue: item.answerA,
        ),
        RadioListTile(
          value: item.answerB,
          title: Text(item.answerB),
          onChanged: (String value) {},
        ),
        RadioListTile(
          value: item.answerC,
          title: Text(item.answerC),
          onChanged: (String value) {},
        ),
        RadioListTile(
          value: item.answerD,
          title: Text(item.answerD),
          onChanged: (String value) {},
        ),
      ]),
    );
  }
}

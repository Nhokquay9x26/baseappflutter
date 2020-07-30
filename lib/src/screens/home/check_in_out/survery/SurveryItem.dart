import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/db/model/SurveryModel.dart';
import 'package:flutter/material.dart';

class SurveryItem extends BaseComponent {
  int index;
  SurveryModel item;

  SurveryItem({this.index, this.item});

  @override
  Widget buildApp(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        TextApp(item.question_str),
        RadioListTile(
          value: item.answer_list[0].answer_str,
          title: Text(item.answer_list[0].answer_str),
          onChanged: (String value) {},
        ),
        RadioListTile(
          value: item.answer_list[1].answer_str,
          title: Text(item.answer_list[1].answer_str),
          onChanged: (String value) {},
        ),
        RadioListTile(
          value: item.answer_list[2].answer_str,
          title: Text(item.answer_list[2].answer_str),
          onChanged: (String value) {},
        ),
        RadioListTile(
          value: item.answer_list[3].answer_str,
          title: Text(item.answer_list[3].answer_str),
          onChanged: (String value) {},
        ),
      ]),
    );
  }
}

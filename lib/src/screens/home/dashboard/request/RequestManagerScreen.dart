import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/db/model/CategoryRequestModel.dart';
import 'package:base/src/screens/home/dashboard/request/RequestManagerItem.dart';
import 'package:base/src/screens/home/dashboard/request/RequestManagerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestManagerScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestManagerViewModel>.withConsumer(
        viewModelBuilder: () => RequestManagerViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: TextApp(
                S.of(context).manager_requirement,
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                PopupMenuButton(
                  icon: Icon(Icons.add),
                  elevation: width3,
                  onSelected: model.choiceAction,
                  itemBuilder: (BuildContext context) {
                    return model.requestSelects
                        .map((CategoryRequestModel choice) {
                      return PopupMenuItem(
                        value: choice,
                        child: Text(choice.name),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            body: SafeArea(
                child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(width5),
                    child: Row(children: <Widget>[
                      Expanded(
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
                              left: width15,
                              right: width15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              TextApp(model.date),
                              InkWell(
                                child: Icon(Icons.arrow_drop_down),
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
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
                      ),
                      SizedBox(
                        width: width10,
                      ),
                      Expanded(
                        child: CustomDropdownButton(
                          hint: TextApp(model.requestSelect),
                          value: model.requestSelect,
                          items: model.requestSelects.map((value) {
                            return DropdownMenuItem(
                              child: Text(value.name),
                              value: value.name,
                            );
                          }).toList(),
                          onChanged: (value) {
                            print(value);
                            model.setRequestSelect(value);
                          },
                        ),
                      )
                    ])),
                Expanded(
                  child: ListView.builder(
                    itemCount: model.items.length,
                    itemBuilder: (context, index) {
                      return RequestManagerItem(
                        index: index,
                        item: model.items[index],
                      );
                    },
                  ),
                ),
              ],
            ))));
  }
}

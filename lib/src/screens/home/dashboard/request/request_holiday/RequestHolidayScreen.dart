import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/request/request_holiday/RequestHolidayViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestHolidayScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestHolidayViewModel>.withConsumer(
        viewModelBuilder: () => RequestHolidayViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: TextApp(
                  S.of(context).request_holiday,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(left: width10, right: width10),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: width20,
                      ),
                      CustomDropdownButton(
                        hint: TextApp(model.categorySelect),
                        value: model.categorySelect,
                        items: model.categories.map((value) {
                          return DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (value) {
                          print(value);
                          model.setCategory(value);
                        },
                      ),
                      SizedBox(
                        height: width20,
                      ),
                      CustomDropdownButton(
                        hint: TextApp(model.categoryHolidaySelect),
                        value: model.categoryHolidaySelect,
                        items: model.categoryHolidays.map((value) {
                          return DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (value) {
                          print(value);
                          model.setCategoryHoliday(value);
                        },
                      ),
                      SizedBox(
                        height: width20,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(width10)),
                                  border: Border.all(
                                      color: Colors.black12, width: width1)),
                              padding: EdgeInsets.only(
                                  top: width5,
                                  bottom: width5,
                                  left: width10,
                                  right: width10),
                              margin: EdgeInsets.only(right: width5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  TextApp(model.dateStart),
                                  InkWell(
                                    child: Icon(Icons.arrow_drop_down),
                                    onTap: () {
                                      DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime: DateTime.now(),
                                          onConfirm: (date) {
                                        model.setDateStart(date);
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.vi);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: width5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(width10)),
                                  border: Border.all(
                                      color: Colors.black12, width: width1)),
                              padding: EdgeInsets.only(
                                  top: width5,
                                  bottom: width5,
                                  left: width10,
                                  right: width10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  TextApp(model.dateEnd),
                                  InkWell(
                                    child: Icon(Icons.arrow_drop_down),
                                    onTap: () {
                                      DatePicker.showDatePicker(context,
                                          showTitleActions: true,
                                          minTime: DateTime.now(),
                                          onConfirm: (date) {
                                        model.setDateEnd(date);
                                      },
                                          currentTime: DateTime.now(),
                                          locale: LocaleType.vi);
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width20,
                      ),
                      Form(
                        key: model.formKey,
                        child: TextFormField(
                            validator: (reason) {
                              if (reason.isEmpty) {
                                return S.of(context).error_invalid(S
                                    .of(context)
                                    .reason_quit_job
                                    .toLowerCase());
                              }
                              return null;
                            },
                            controller: model.controllerReason,
                            keyboardType: TextInputType.multiline,
                            maxLines: 10,
                            decoration: InputDecoration(
                                labelText: S.of(context).reason_quit_job,
                                focusedBorder: focusedBorder,
                                border: border,
                                labelStyle: labelStyle,
                                hintStyle: hintStyle,
                                alignLabelWithHint: true)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: width20),
                        child: Center(
                          child: ButtonApp(
                            text: S.of(context).send,
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}

import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/request/request_work_late/RequestWorkLateViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestWorkLateScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestWorkLateViewModel>.withConsumer(
        viewModelBuilder: () => RequestWorkLateViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: TextApp(
                  S.of(context).request_work_late,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(width5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: width60,
                              right: width60,
                              top: width20,
                              bottom: width20),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(width10)),
                                    border: Border.all(
                                        color: Colors.black12, width: width1)),
                                padding: EdgeInsets.only(
                                    top: width5,
                                    bottom: width5,
                                    left: width15,
                                    right: width15),
                                margin: EdgeInsets.only(bottom: width10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    TextApp(model.timeStart),
                                    InkWell(
                                      child: Icon(Icons.arrow_drop_down),
                                      onTap: () {
                                        DatePicker.showTimePicker(context,
                                            showTitleActions: true,
                                            showSecondsColumn: false,
                                            onConfirm: (time) {
                                          model.setTimeStart(time);
                                        },
                                            currentTime: DateTime.now(),
                                            locale: LocaleType.vi);
                                      },
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(width10)),
                                    border: Border.all(
                                        color: Colors.black12, width: width1)),
                                padding: EdgeInsets.only(
                                    top: width5,
                                    bottom: width5,
                                    left: width15,
                                    right: width15),
                                margin: EdgeInsets.only(bottom: width10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    TextApp(model.timeEnd),
                                    InkWell(
                                      child: Icon(Icons.arrow_drop_down),
                                      onTap: () {
                                        DatePicker.showTimePicker(context,
                                            showTitleActions: true,
                                            showSecondsColumn: false,
                                            onConfirm: (time) {
                                          model.setTimeEnd(time);
                                        },
                                            currentTime: DateTime.now(),
                                            locale: LocaleType.vi);
                                      },
                                    )
                                  ],
                                ),
                              ),
                              CustomDropdownButton(
                                hint: TextApp(model.shiftSelect),
                                value: model.shiftSelect,
                                items: model.shifts.map((value) {
                                  return DropdownMenuItem(
                                    child: Text(value),
                                    value: value,
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  print(value);
                                  model.setShift(value);
                                },
                              ),
                            ],
                          ),
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
              ),
            ));
  }
}

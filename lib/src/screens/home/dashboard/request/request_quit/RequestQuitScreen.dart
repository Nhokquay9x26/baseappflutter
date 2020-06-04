import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/request/request_quit/RequestQuitViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestQuitScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestQuitViewModel>.withConsumer(
        viewModelBuilder: () => RequestQuitViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                title: TextApp(
                  S.of(context).request_quit,
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
                          margin:
                              EdgeInsets.only(top: width10, bottom: width20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              TextApp(model.date),
                              InkWell(
                                child: Icon(Icons.arrow_drop_down),
                                onTap: () {
                                  DatePicker.showDatePicker(context,
                                      showTitleActions: true,
                                      minTime: DateTime.now(),
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

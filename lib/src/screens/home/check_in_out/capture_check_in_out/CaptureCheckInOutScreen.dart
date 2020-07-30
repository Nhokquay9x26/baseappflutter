import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/check_in_out/capture_check_in_out/CaptureCheckInOutViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class CaptureCheckInOutScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<CaptureCheckInOutViewModel>.withConsumer(
        viewModelBuilder: () => CaptureCheckInOutViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).check_in,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(width3),
                    child: Column(children: <Widget>[
                      InkWell(
                        onTap: () {
                          model.getImage();
                        },
                        child: model.selectFile != null
                            ? Image.file(
                                model.selectFile,
                                width: width350,
                                height: width300,
                                 fit: BoxFit.cover,
                              )
                            : Container(
                                width: width350,
                                height: width300,
                                color: Colors.grey,
                                child: Icon(
                                  Icons.camera,
                                  size: width40,
                                ),
                              ),
                      ),
                      Container(
                        padding: EdgeInsets.all(width30),
                        child: TextApp(
                          S.of(context).selfie_check_in_note,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ButtonApp(
                        text: S.of(context).next,
                        onPressed: () {
                          // TODO Navigation Login
                          model.next();
                        },
                      ),
                    ])))));
  }
}

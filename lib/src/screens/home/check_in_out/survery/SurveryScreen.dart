import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/check_in_out/survery/SurveryItem.dart';
import 'package:base/src/screens/home/check_in_out/survery/SurveryViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class SurveryScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<SurveryViewModel>.withConsumer(
        viewModelBuilder: () => SurveryViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).survery,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
              padding: EdgeInsets.all(width5),
              child: Column(
                children: <Widget>[
                  TextApp(
                    S.of(context).check_in_time("11:00:00"),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: width10),
                      child: ListView.builder(
                        itemCount: model.items.length,
                        itemBuilder: (context, index) {
                          return SurveryItem(
                            index: index,
                            item: model.items[index],
                          );
                        },
                      ),
                    ),
                  ),
                  ButtonApp(
                    text: S.of(context).next,
                    onPressed: () {},
                  )
                ],
              ),
            ))));
  }
}

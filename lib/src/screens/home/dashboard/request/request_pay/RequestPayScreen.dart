import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/request/request_pay/RequestPayItem.dart';
import 'package:base/src/screens/home/dashboard/request/request_pay/RequestPayViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestPayScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestPayViewModel>.withConsumer(
        viewModelBuilder: () => RequestPayViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: TextApp(
                  S.of(context).request_pay,
                  style: TextStyle(color: Colors.white),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      model.addRequest();
                    },
                  )
                ],
              ),
              body: SafeArea(
                child: Container(
                  margin: EdgeInsets.all(width10),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: NotificationListener<ScrollNotification>(
                          onNotification: (ScrollNotification scrollInfo) {},
                          child: ListView.builder(
                            itemCount: model.items.length,
                            itemBuilder: (context, index) {
                              return RequestPayItem(
                                index: index,
                                item: model.items[index],
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: width10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  model.getImage();
                                },
                                child: model.selectFile != null
                                    ? Image.file(
                                        model.selectFile,
                                        width: width150,
                                        height: width100,
                                        fit: BoxFit.cover,
                                      )
                                    : Container(
                                        width: width150,
                                        height: width100,
                                        color: Colors.grey,
                                        child: Icon(
                                          Icons.camera,
                                          size: width40,
                                        ),
                                      ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: width20),
                                child: ButtonApp(
                                  text: S.of(context).send,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}

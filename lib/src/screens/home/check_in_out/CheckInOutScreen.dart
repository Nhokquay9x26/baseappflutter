import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Colors.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/routers/RouterName.dart';
import 'package:base/src/screens/home/check_in_out/CheckInOutItem.dart';
import 'package:base/src/screens/home/check_in_out/CheckInOutViewModel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider_architecture/provider_architecture.dart';

class CheckInOutScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<CheckInOutViewModel>.withConsumer(
        viewModelBuilder: () => CheckInOutViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).check_in_out,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(width5),
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        TextApp(S.of(context).manager_check_in_out),
                        SizedBox(
                          height: height10,
                        ),
                        Container(
                          color: COLOR_APP,
                          height: height45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Center(
                                  child: TextApp(
                                    S.of(context).month,
                                    style: TextStyle(
                                        fontSize: font13, color: Colors.white),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                width: width1,
                              ),
                              Expanded(
                                  child: Center(
                                child: TextApp(
                                  S.of(context).miss_check_in,
                                  style: TextStyle(
                                      fontSize: font13, color: Colors.white),
                                ),
                              )),
                              VerticalDivider(
                                color: Colors.white,
                                width: width1,
                              ),
                              Expanded(
                                  child: Center(
                                      child: TextApp(
                                S.of(context).miss_check_out,
                                style: TextStyle(
                                    fontSize: font13, color: Colors.white),
                              ))),
                              VerticalDivider(
                                color: Colors.white,
                                width: width1,
                              ),
                              Expanded(
                                  child: Center(
                                      child: TextApp(
                                S.of(context).miss_check_in_out,
                                style: TextStyle(
                                    fontSize: font13, color: Colors.white),
                              ))),
                            ],
                          ),
                        ),
                        Container(
                          height: height200,
                          child: NotificationListener<ScrollNotification>(
                            onNotification: (ScrollNotification scrollInfo) {
                              if (!model.isLoading &&
                                  scrollInfo.metrics.pixels ==
                                      scrollInfo.metrics.maxScrollExtent) {
                                model.loadData();
                              }
                              return null;
                            },
                            child: ListView.separated(
                              separatorBuilder: (context, index) => Divider(
                                color: COLOR_APP,
                                height: width1,
                              ),
                              itemCount: model.items.length,
                              itemBuilder: (context, index) {
                                return CheckInOutItem(
                                  index: index,
                                  item: model.items[index],
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: model.isLoading ? width30 : 0,
                          color: Colors.transparent,
                          child: Center(
                            child: new CircularProgressIndicator(),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height20, bottom: height20),
                      height: height200,
                      child: GoogleMap(
                        initialCameraPosition: model.currentLocation,
                        onMapCreated: (GoogleMapController controller) {
                          model.mapController = controller;
                        },
                        tiltGesturesEnabled: true,
                        myLocationButtonEnabled: false,
                        myLocationEnabled: true,
                        markers: model.markers,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RouterName.camera);
                      },
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(width10),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              size: width40,
                              color: COLOR_APP,
                            ),
                            TextApp(S.of(context).check_in_out)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}

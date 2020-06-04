import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/screens/home/dashboard/request/request_advance_payment/RequestAdvancePaymentViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestAdvancePaymentScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<RequestAdvancePaymentViewModel>.withConsumer(
        viewModelBuilder: () => RequestAdvancePaymentViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: TextApp(
                  S.of(context).request_advance_payment,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              body: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(left: width10, right: width10),
                  child: Column(
                    children: <Widget>[
                      Form(
                        key: model.formKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: height20,
                            ),
                            InputAmount(),
                            SizedBox(
                              height: height20,
                            ),
                            CustomDropdownButton(
                              hint: TextApp(model.categoryAdvancePaymentSelect),
                              value: model.categoryAdvancePaymentSelect,
                              items: model.categoryAdvancePayments.map((value) {
                                return DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                );
                              }).toList(),
                              onChanged: (value) {
                                print(value);
                                model.setCategoryAdvancePayment(value);
                              },
                            ),
                            SizedBox(
                              height: height20,
                            ),
                            InputContent(),
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
                    ],
                  ),
                ),
              ),
            ));
  }
}

class InputAmount extends ProviderWidget<RequestAdvancePaymentViewModel> {
  @override
  Widget build(BuildContext context, RequestAdvancePaymentViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (userName) {
        if (userName.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).amount.toLowerCase());
        }
        return null;
      },
      controller: model.controllerAmount,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.attach_money),
          labelText: S.of(context).amount,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

class InputContent extends ProviderWidget<RequestAdvancePaymentViewModel> {
  @override
  Widget build(BuildContext context, RequestAdvancePaymentViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (userName) {
        if (userName.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).content.toLowerCase());
        }
        return null;
      },
      controller: model.controllerContent,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.content_copy),
          labelText: S.of(context).content,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

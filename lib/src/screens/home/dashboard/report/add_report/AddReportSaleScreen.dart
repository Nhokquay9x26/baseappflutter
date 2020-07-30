import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/BaseApp.dart';
import 'package:base/src/components/ButtonApp.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/db/model/ProductModel.dart';
import 'package:base/src/screens/home/dashboard/report/add_report/AddReportSaleViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class AddReportSaleScreen extends BaseApp {
  @override
  Widget buildApp(BuildContext context) {
    // TODO: implement buildApp
    return ViewModelProvider<AddReportSaleViewModel>.withConsumer(
        viewModelBuilder: () => AddReportSaleViewModel(context),
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) => Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
                title: TextApp(
              S.of(context).add_product,
              style: TextStyle(color: Colors.white),
            )),
            body: SafeArea(
                child: Container(
              margin: EdgeInsets.all(width10),
              child: Column(
                children: <Widget>[
                  Search(),
                  SizedBox(
                    height: height20,
                  ),
                  Form(
                    key: model.formKey,
                    child: Column(
                      children: <Widget>[
                        InputAmountProduct(),
                        SizedBox(
                          height: height20,
                        ),
                        InputMoneyProduct(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ButtonApp(
                        text: S.of(context).save_close,
                        onPressed: () {},
                      ),
                      ButtonApp(
                        text: S.of(context).save_create,
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
            ))));
  }
}

class InputAmountProduct extends ProviderWidget<AddReportSaleViewModel> {
  @override
  Widget build(BuildContext context, AddReportSaleViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (name) {
        if (name.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).name_product.toLowerCase());
        }
        return null;
      },
      controller: model.controllerAmount,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.colorize),
          labelText: S.of(context).amount_product,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

class InputMoneyProduct extends ProviderWidget<AddReportSaleViewModel> {
  @override
  Widget build(BuildContext context, AddReportSaleViewModel model) {
    // TODO: implement build
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return S
              .of(context)
              .error_invalid(S.of(context).name_product.toLowerCase());
        }
        return null;
      },
      controller: model.controllerMoney,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.confirmation_number),
          labelText: S.of(context).money_product,
          focusedBorder: focusedBorder,
          border: border,
          labelStyle: labelStyle,
          hintStyle: hintStyle,
          contentPadding: contentPadding),
    );
  }
}

class Search extends ProviderWidget<AddReportSaleViewModel> {
  @override
  Widget build(BuildContext context, AddReportSaleViewModel model) {
    return model.searchTextField = AutoCompleteTextField<ProductModel>(
        key: model.key,
        clearOnSubmit: false,
        suggestions: model.list,
        style: TextStyle(color: Colors.black, fontSize: font14),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            labelText: S.of(context).name_product,
            focusedBorder: focusedBorder,
            border: border,
            labelStyle: labelStyle,
            hintStyle: hintStyle,
            contentPadding: contentPadding),
        itemFilter: (item, query) {
          return item.name.toLowerCase().startsWith(query.toLowerCase());
        },
        itemSorter: (a, b) {
          return a.name.compareTo(b.name);
        },
        itemSubmitted: (item) {
            model.searchTextField.textField.controller.text = item.name;
        },
        itemBuilder: (context, item) {
          // ui for the autocomplete row
          return Container(
            margin: EdgeInsets.only(top: width10),
            child: TextApp(
              item.name,
            ),
          );
        });
  }
}

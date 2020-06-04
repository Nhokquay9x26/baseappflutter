import 'package:base/generated/l10n.dart';
import 'package:base/res/styles/Sizes.dart';
import 'package:base/res/styles/Styles.dart';
import 'package:base/src/components/BaseComponent.dart';
import 'package:base/src/components/CustomDropdownButton.dart';
import 'package:base/src/components/TextApp.dart';
import 'package:base/src/constant/Constant.dart';
import 'package:base/src/db/model/RequestModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/provider_architecture.dart';

class RequestPayItem extends BaseComponent {
  int index;
  RequestModel item;

  RequestPayItem({this.index, this.item});

  @override
  Widget buildApp(BuildContext context) {
    return Container(
      child: Provider.value(
        value: item,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height20,
            ),
            InputAmount(),
            SizedBox(
              height: height20,
            ),
            DropDownCategory(),
            SizedBox(
              height: height20,
            ),
            InputContent(),
          ],
        ),
      ),
    );
  }
}

class InputAmount extends ProviderWidget<RequestModel> {
  @override
  Widget build(BuildContext context, RequestModel model) {
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

class InputContent extends ProviderWidget<RequestModel> {
  @override
  Widget build(BuildContext context, RequestModel model) {
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

class DropDownCategory extends ProviderWidget<RequestModel> {
  @override
  Widget build(BuildContext context, RequestModel model) {
    return CustomDropdownButton(
      hint: TextApp(model.category),
      value: model.category,
      items: categories.map((value) {
        return DropdownMenuItem(
          child: Text(value),
          value: value,
        );
      }).toList(),
      onChanged: (value) {
        print(value);
        model.category = value;
      },
    );
  }
}

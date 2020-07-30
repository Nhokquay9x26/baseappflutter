import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:base/src/db/model/ProductModel.dart';
import 'package:flutter/material.dart';

class AddReportSaleViewModel extends ChangeNotifier {
  TextEditingController controllerAmount = TextEditingController();
  TextEditingController controllerMoney = TextEditingController();
  AutoCompleteTextField searchTextField;
  BuildContext context;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<AutoCompleteTextFieldState<ProductModel>> key = GlobalKey();
  List<ProductModel> list = <ProductModel>[
    ProductModel("Product 1", "54"),
    ProductModel("Product 2", "54"),
    ProductModel("Product 3", "54"),
    ProductModel("Product 4", "54"),
    ProductModel("Product 5", "54"),
    ProductModel("Product 6", "54"),
  ];

  AddReportSaleViewModel(this.context);

  void initialise() {
    controllerAmount.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
    controllerMoney.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
    });
  }
}

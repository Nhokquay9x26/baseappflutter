import 'package:base/src/db/model/SurveryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../../mainProvider.dart';

class SurveryViewModel extends ChangeNotifier {
  BuildContext context;

  SurveryViewModel(this.context);

  int radioValue;

  List<SurveryModel> surveryList;

  void initialise() {
    surveryList = Provider.of<MainProvider>(context, listen: false)
        .authResponse
        .survey_list;
    notifyListeners();
  }

  void onChangedRadio(int value) {}
}

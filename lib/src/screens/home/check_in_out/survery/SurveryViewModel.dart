import 'package:base/src/api/response/SurveryResponse.dart';
import 'package:flutter/cupertino.dart';

class SurveryViewModel extends ChangeNotifier {
  BuildContext context;

  SurveryViewModel(this.context);

  int radioValue;

  List<SurveryResponse> items = [
    SurveryResponse(1, "Cau 1", "A", "B", "C", "D"),
    SurveryResponse(2, "Cau 2", "A", "B", "C", "D"),
    SurveryResponse(3, "Cau 3", "A", "B", "C", "D"),
    SurveryResponse(4, "Cau 4", "A", "B", "C", "D"),
    SurveryResponse(5, "Cau 5", "A", "B", "C", "D"),
    SurveryResponse(6, "Cau 6", "A", "B", "C", "D"),
  ];

  void initialise() {}

  void onChangedRadio(int value) {}
}

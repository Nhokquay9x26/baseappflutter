import 'package:base/generated/l10n.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class RequestWorkLateViewModel extends ChangeNotifier {
  BuildContext context;
  String timeStart;
  String timeEnd;
  String shiftSelect;
  List<String> shifts;
  TextEditingController controllerReason = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RequestWorkLateViewModel(this.context);

  void initialise() {
    timeStart = S.of(this.context).time_start;
    timeEnd = S.of(this.context).time_end;
    controllerReason.addListener(() {
      if (!formKey.currentState.validate()) {
        return;
      }
      notifyListeners();
    });
    shifts = ["Ca sáng", "Ca chiều", "Ca tối"];
    shiftSelect = shifts[0];
  }

  void setTimeStart(time) {
    timeStart = TimeUtils.formatHours(time);
    notifyListeners();
  }

  void setTimeEnd(time) {
    timeEnd = TimeUtils.formatHours(time);
    notifyListeners();
  }

  void setShift(String shift) {
    shiftSelect = shift;
    notifyListeners();
  }
}

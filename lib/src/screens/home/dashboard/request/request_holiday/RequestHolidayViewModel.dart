import 'package:base/generated/l10n.dart';
import 'package:base/src/utils/TimeUtils.dart';
import 'package:flutter/material.dart';

class RequestHolidayViewModel extends ChangeNotifier {
  String categorySelect;
  String categoryHolidaySelect;
  List<String> categories;
  List<String> categoryHolidays;
  TextEditingController controllerReason = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String dateStart;
  String dateEnd;
  BuildContext context;

  RequestHolidayViewModel(this.context);

  void initialise() {
    dateStart = S.of(this.context).date_start;
    dateEnd = S.of(this.context).date_end;
    categories = ["Loại 1", "Loại 2"];
    categorySelect = categories[0];
    categoryHolidays = ["Loại nghĩ phép 1", "Loại nghĩ phép 2"];
    categoryHolidaySelect = categoryHolidays[0];
  }

  void setCategory(String category) {
    categorySelect = category;
    notifyListeners();
  }

  void setCategoryHoliday(String categoryHoliday) {
    categoryHolidaySelect = categoryHoliday;
    notifyListeners();
  }

  void setDateStart(date) {
    this.dateStart = TimeUtils.formatTime(date);
    notifyListeners();
  }

  void setDateEnd(date) {
    this.dateEnd = TimeUtils.formatTime(date);
    notifyListeners();
  }
}

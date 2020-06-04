import 'package:base/src/screens/home/calendar/CalendarScreen.dart';
import 'package:base/src/screens/home/check_in_out/CheckInOutScreen.dart';
import 'package:base/src/screens/home/dashboard/DashboardScreen.dart';
import 'package:base/src/screens/home/schedule/ScheduleScreen.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  BuildContext context;
  int currentIndex = 0;
  final List<Widget> children = [
    DashBoardScreen(),
    CheckInOutScreen(),
    ScheduleScreen(),
    CalendarScreen(),
  ];

  HomeViewModel(this.context);

  void initialise() {
    notifyListeners();
  }

  void onChangeTab(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

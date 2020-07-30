import 'package:base/src/screens/auth/forgot_password/ForgotPasswordScreen.dart';
import 'package:base/src/screens/auth/login/LoginScreen.dart';
import 'package:base/src/screens/auth/otp/OTPScreen.dart';
import 'package:base/src/screens/home/HomeScreen.dart';
import 'package:base/src/screens/home/check_in_out/capture_check_in_out/CaptureCheckInOutScreen.dart';
import 'package:base/src/screens/home/check_in_out/survery/SurveryScreen.dart';
import 'package:base/src/screens/home/dashboard/holiday/HolidayManagerScreen.dart';
import 'package:base/src/screens/home/dashboard/report/ReportScreen.dart';
import 'package:base/src/screens/home/dashboard/report/add_report/AddReportSaleScreen.dart';
import 'package:base/src/screens/home/dashboard/report/report_sale/ReportSaleScreen.dart';
import 'package:base/src/screens/home/dashboard/request/RequestManagerScreen.dart';
import 'package:base/src/screens/home/dashboard/request/request_advance_payment/RequestAdvancePaymentScreen.dart';
import 'package:base/src/screens/home/dashboard/request/request_holiday/RequestHolidayScreen.dart';
import 'package:base/src/screens/home/dashboard/request/request_pay/RequestPayScreen.dart';
import 'package:base/src/screens/home/dashboard/request/request_quit/RequestQuitScreen.dart';
import 'package:base/src/screens/home/dashboard/request/request_work_late/RequestWorkLateScreen.dart';
import 'package:base/src/screens/home/dashboard/salary/SalaryScreen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'Login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case 'ForgotPassword':
        return MaterialPageRoute(builder: (context) => ForgotPasswordScreen());
      case 'Otp':
        return MaterialPageRoute(builder: (context) => OTPScreen());
      case 'Home':
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case 'Camera':
        return MaterialPageRoute(
            builder: (context) => CaptureCheckInOutScreen());
      case 'Survery':
        return MaterialPageRoute(builder: (context) => SurveryScreen());
      case 'Salary':
        return MaterialPageRoute(builder: (context) => SalaryScreen());
      case 'Report':
        return MaterialPageRoute(builder: (context) => ReportScreen());
      case 'ReportSale':
        return MaterialPageRoute(builder: (context) => ReportSaleScreen());
      case 'AddReportSale':
        return MaterialPageRoute(builder: (context) => AddReportSaleScreen());
      case 'HolidayManager':
        return MaterialPageRoute(builder: (context) => HolidayManagerScreen());
      case 'RequestManager':
        return MaterialPageRoute(builder: (context) => RequestManagerScreen());
      case 'RequestQuit':
        return MaterialPageRoute(builder: (context) => RequestQuitScreen());
      case 'RequestWorkLate':
        return MaterialPageRoute(builder: (context) => RequestWorkLateScreen());
      case 'RequestPay':
        return MaterialPageRoute(builder: (context) => RequestPayScreen());
      case 'RequestAdvancePayment':
        return MaterialPageRoute(
            builder: (context) => RequestAdvancePaymentScreen());
      case 'RequestHoliday':
        return MaterialPageRoute(builder: (context) => RequestHolidayScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}

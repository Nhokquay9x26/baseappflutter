import 'package:intl/intl.dart';

class TimeUtils {
  static String formatTime(date) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return formattedDate;
  }

  static String formatMonthYear(date) {
    String formattedDate = DateFormat('yyyy-MM').format(date);
    return formattedDate;
  }

  static String formatHours(time) {
    String formattedDate = DateFormat('HH:mm').format(time);
    return formattedDate;
  }
}

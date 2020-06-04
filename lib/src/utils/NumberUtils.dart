import 'package:intl/intl.dart';

class NumberUtils {
  static String formatMoney(int money) {
    return NumberFormat.currency(locale: "vi", symbol: '').format(money);
  }
}

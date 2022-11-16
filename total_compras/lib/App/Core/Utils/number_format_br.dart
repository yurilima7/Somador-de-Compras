import 'package:intl/intl.dart';

class NumberFormatBr {
  String formatBR(double value) {
    return NumberFormat.simpleCurrency(locale: 'pt_BR').format(value);
  }
}

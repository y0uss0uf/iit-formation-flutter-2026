import 'package:intl/intl.dart';

extension AmountFormatter on double {
  String get amount {
    return NumberFormat('#,##0', 'fr_FR').format(this);
  }
}
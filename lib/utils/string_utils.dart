import 'package:intl/intl.dart';

class StringUtils {
  static String formatNaira(double amount) {
    final formatNaira = NumberFormat.currency(
      locale: 'en_NG', // English Nigeria
      symbol: '₦', // Naira symbol
      decimalDigits: 0, // Optional, defaults to 2
    );
    return formatNaira.format(amount);
  }
}

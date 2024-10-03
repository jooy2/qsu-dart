/// Return number format including comma symbol.
String numberFormat(dynamic number) {
  final List<String> parts = number.toString().split('.');
  final String decimalPart =
      (parts.length > 1 && parts[1] != '0') ? '.${parts[1]}' : '';

  final String formattedIntegerPart = parts[0].replaceAllMapped(
      RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]},');

  return formattedIntegerPart + decimalPart;
}

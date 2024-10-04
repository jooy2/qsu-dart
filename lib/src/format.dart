import 'dart:math';

/// Return number format including comma symbol.
String numberFormat(dynamic number) {
  final List<String> parts = number.toString().split('.');
  final String decimalPart =
      (parts.length > 1 && parts[1] != '0') ? '.${parts[1]}' : '';

  final String formattedIntegerPart = parts[0].replaceAllMapped(
      RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match match) => '${match[1]},');

  return formattedIntegerPart + decimalPart;
}

String fileSize(int bytes, {int? decimals}) {
  if (bytes <= 0) {
    return '0 Bytes';
  }

  final int byteCalc = (log(bytes) / log(1024)).floor();
  final double size = bytes / pow(1024, byteCalc);
  final String sizeStr;

  if (size % 1 == 0) {
    sizeStr = size.toInt().toString();
  } else {
    sizeStr = size.toStringAsFixed(decimals ?? 2);
  }

  final List<String> units = [
    'Bytes',
    'KB',
    'MB',
    'GB',
    'TB',
    'PB',
    'EB',
    'ZB',
    'YB'
  ];

  return '$sizeStr ${units[byteCalc]}';
}

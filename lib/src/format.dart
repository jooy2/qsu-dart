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

/// Converts the file size in bytes to human-readable and returns it. The return value is a String and includes the file units (Bytes, MB, GB...). If the second optional argument value is included, you can display as many decimal places as you like.
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

/// Returns only the extensions in the file path. If unknown, returns 'Unknown'.
String fileExt(String filePath) {
  if (!filePath.contains('.')) {
    return 'Unknown';
  }

  final List<String> pSpl = filePath.trim().toLowerCase().split('.');

  return pSpl.isNotEmpty ? pSpl.last : 'Unknown';
}

/// Any argument value will be attempted to be parsed as a Number type without returning an error. If parsing fails, it is replaced by the number set in `fallback`. The default value for `fallback` is `0`. You can specify `radix` (default is decimal: `10`) in the third argument.
int safeParseInt(dynamic value, {int? fallback, int? radix}) {
  if (value == null) {
    return fallback ?? 0;
  }

  try {
    return int.parse(value.toString().split('.').first, radix: radix ?? 10);
  } catch (e) {
    return fallback ?? 0;
  }
}

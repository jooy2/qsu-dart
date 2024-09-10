String trim(String str) {
  if (str.isEmpty) {
    return '';
  }

  String result = str.trim();

  return result.replaceAll(RegExp(r'\s{2,}'), ' ');
}

String replaceBetween(String str, String startChar, String endChar, String replaceWith) {
  final RegExp specialCharacters = RegExp(r'[.*+?^${}()|[\]\\]');
  final String startCharRegExp = specialCharacters.hasMatch(startChar) ? '\\$startChar' : startChar;
  final String endCharRegExp = specialCharacters.hasMatch(endChar) ? '\\$endChar' : endChar;

  return str.replaceAll(RegExp('$startCharRegExp.*?$endCharRegExp'), replaceWith);
}

String removeNewLine(String str, {String? replaceTo = ''}) {
  return str.replaceAll(RegExp(r'(\r\n|\n|\r)', multiLine: true), replaceTo ?? '').trim();
}

String capitalizeFirst(String str) {
  return '${str[0].toUpperCase()}${str.substring(1)}';
}

String truncate(String str, int length, {String? ellipsis}) {
  if (str.length > length) {
    return str.substring(0, length) + (ellipsis ?? '');
  }
  return str;
}

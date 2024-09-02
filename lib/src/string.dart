String capitalizeFirst(String str) {
  return '${str[0].toUpperCase()}${str.substring(1)}';
}

String truncate(String str, int length, {String? ellipsis}) {
  if (str.length > length) {
    return str.substring(0, length) + (ellipsis ?? '');
  }
  return str;
}

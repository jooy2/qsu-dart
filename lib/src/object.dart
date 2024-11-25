import 'dart:convert';

/// Converts the given object data to a URL query string.
String objToQueryString(Map<String, dynamic> obj) {
  return obj.keys.map((key) {
    var value = obj[key];

    if (value is Map || value is List) {
      value = json.encode(value);
    }

    return '${Uri.encodeComponent(key)}=${Uri.encodeComponent(value.toString())}';
  }).join('&');
}

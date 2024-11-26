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

/// Converts the given object to array format. The resulting array is a two-dimensional array with one key value stored as follows: `[key, value]`.
/// If the `recursive` option is `true`, it will convert to a two-dimensional array again when the value is of type `object`.
List<dynamic> objToArray(Map<String, dynamic> obj, [bool recursive = false]) {
  List<dynamic> convertToArray(Map<String, dynamic> o) {
    List<dynamic> r = [];
    for (var key in o.keys) {
      var value = o[key];

      if (recursive && value is Map<String, dynamic>) {
        r.add([key, convertToArray(value)]);
      } else {
        r.add([key, value]);
      }
    }
    return r;
  }

  return convertToArray(obj);
}

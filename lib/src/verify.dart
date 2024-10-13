/// Returns `true` if the first string argument contains the second argument "string" or "one or more of the strings listed in the array". If the exact value is `true`, it returns true only for an exact match.
bool contains(dynamic str, dynamic search, {bool exact = false}) {
  if (search.runtimeType == String) {
    return str.length < 1 ? false : str.indexOf(search) != -1;
  }

  for (int i = 0, iLen = search.length; i < iLen; i += 1) {
    if (exact) {
      if (str == search[i]) {
        return true;
      }
    } else if (str.indexOf(search[i]) != -1) {
      return true;
    }
  }

  return false;
}

/// Returns `true` if the given array is a two-dimensional array.
bool is2dArray(List<dynamic> array) {
  return array.any((element) => element is List);
}

bool isEmail(String email) {
  return RegExp(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$")
      .hasMatch(email);
}

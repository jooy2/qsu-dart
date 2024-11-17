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

/// Checks if the given argument value is a valid email.
bool isEmail(String email) {
  return RegExp(
          r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$")
      .hasMatch(email);
}

/// Returns `true` if the first argument is in the range of the second argument (`[min, max]`).
/// To allow the minimum and maximum values to be in the range, pass `true` for the third argument.
bool between(List<num> range, num number, {bool inclusive = false}) {
  final minM = range.reduce((a, b) => a < b ? a : b);
  final maxM = range.reduce((a, b) => a > b ? a : b);

  return inclusive
      ? (number >= minM && number <= maxM)
      : (number > minM && number < maxM);
}

import 'dart:convert';
import 'dart:math';

import 'package:qsu/src/verify.dart';

List<T> arrShuffle<T>(List<T> array) {
  if (array.length == 1) {
    return array;
  }

  final List<T> newArray = List.from(array);

  for (int i = newArray.length - 1; i > 0; i--) {
    int j = Random().nextInt(i + 1);
    T temp = newArray[i];
    newArray[i] = newArray[j];
    newArray[j] = temp;
  }

  return newArray;
}

List<dynamic> arrWithDefault(dynamic defaultValue, int length) {
  if (length < 1) {
    return [];
  }

  return List.filled(length, defaultValue);
}

List<int> arrWithNumber(int start, int end) {
  if (start > end) {
    throw ArgumentError('`end` is greater than `start`.');
  }

  return List<int>.generate(end - start + 1, (index) => start + index);
}

List<dynamic> arrUnique(List<dynamic> array) {
  if (is2dArray(array)) {
    final Set<String> jsonSet = <String>{};
    final List<dynamic> result = <dynamic>[];

    for (dynamic item in array) {
      final String jsonString = jsonEncode(item);

      if (jsonSet.add(jsonString)) {
        result.add(jsonDecode(jsonString));
      }
    }

    return result;
  } else {
    return array.toSet().toList();
  }
}

double average(List<double> array) {
  return array.reduce((p, c) => p + c) / array.length;
}

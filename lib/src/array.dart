import 'dart:math';

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

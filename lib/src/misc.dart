Future<void> sleep(int delay) async {
  await Future.delayed(Duration(milliseconds: delay));
}

List<dynamic> funcTimes(int times, dynamic iteratee) {
  if (times < 1) {
    throw ArgumentError('`times` must be a positive integer.');
  }

  return List<dynamic>.generate(times, (int index) {
    if (iteratee is Function) {
      return iteratee();
    } else {
      return iteratee;
    }
  }, growable: false);
}

import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Array', () {
    test('arrShuffle', () {
      expect(arrShuffle([1, 2, 3, 4, 5, 6, 7, 8]), completes);
      expect(
          arrShuffle([
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8]
          ]),
          completes);
      expect(
          arrShuffle([
            {'A': 1},
            {'B': 2},
            {'C': 3},
            {'D': 4}
          ]),
          completes);
    });
  });
}

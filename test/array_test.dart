import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Array', () {
    test('arrShuffle', () {
      expect(arrShuffle([1, 2, 3, 4, 5, 6, 7, 8]), hasLength(8));
      expect(
          arrShuffle([
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8]
          ]),
          hasLength(4));
      expect(
          arrShuffle([
            {'A': 1},
            {'B': 2},
            {'C': 3},
            {'D': 4}
          ]),
          hasLength(4));
    });
  });
}

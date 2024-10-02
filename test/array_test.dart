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

    test('arrWithDefault', () {
      expect(arrWithDefault('test', 0), []);
      expect(arrWithDefault(123, 2), [123, 123]);
      expect(arrWithDefault('test', 5), ['test', 'test', 'test', 'test', 'test']);
      expect(arrWithDefault([null], 2), [
        [null],
        [null]
      ]);
    });

    test('arrWithNumber', () {
      expect(arrWithNumber(1, 2), [1, 2]);
      expect(arrWithNumber(0, 5), [0, 1, 2, 3, 4, 5]);
      expect(arrWithNumber(1, 1), [1]);
    });
  });
}

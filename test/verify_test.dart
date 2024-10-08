import 'package:qsu/qsu.dart';
import 'package:test/test.dart' hide contains;

void main() {
  group('Verify', () {
    test('contains', () {
      expect(contains('12345', '3'), true);
      expect(contains('12345', '10'), false);
      expect(contains('ABC', ['A', 'B', 'C']), true);
      expect(contains('ABC', ['D', 'E', 'F']), false);
      expect(contains('ABC', ['AB', 'C'], exact: true), false);
      expect(contains('AB', ['AB', 'C', 'D'], exact: true), true);
    });

    test('is2dArray', () {
      expect(is2dArray([]), false);
      expect(is2dArray([[], []]), true);
      expect(
          is2dArray([
            {'a': 1},
            {'b': 2}
          ]),
          false);
      expect(
          is2dArray([
            [1],
            [2]
          ]),
          true);
    });
  });
}

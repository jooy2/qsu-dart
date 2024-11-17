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

    test('isEmail', () {
      expect(isEmail('1@1.com'), true);
      expect(isEmail('abc@def.ghi'), true);
      expect(isEmail('abc@sub.domain.com'), true);
      expect(isEmail('a.bc@d.ef'), true);
      expect(isEmail('a-12_34@b-12-34.net'), true);
      expect(isEmail('@b1234.net'), false);
      expect(isEmail('a1234@b1234'), false);
      expect(isEmail('a_1234@b_1234.net'), false);
      expect(isEmail('abc@@def.com'), false);
      expect(isEmail('11.com'), false);
      expect(isEmail('sub.domain.com'), false);
      expect(isEmail('1@1@a.com'), false);
    });

    test('between', () {
      expect(between([1, 10], 1), false);
      expect(between([1, 10], 1, inclusive: true), true);
      expect(between([10, 100], 11), true);
    });
  });
}

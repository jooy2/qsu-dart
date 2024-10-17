import 'package:qsu/qsu.dart';
import 'package:qsu/src/crypto.dart';
import 'package:test/test.dart';

void main() {
  group('Crypto', () {
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

    test('md5Hash', () {
      expect(md5Hash('test'), '098f6bcd4621d373cade4e832627b4f6');
      expect(md5Hash('qsu-md5'), '94af002364e42b514badb41b870ceb04');
    });
  });
}

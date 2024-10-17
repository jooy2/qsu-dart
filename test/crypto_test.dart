import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Crypto', () {
    test('md5Hash', () {
      expect(md5Hash('test'), '098f6bcd4621d373cade4e832627b4f6');
      expect(md5Hash('qsu-md5'), '94af002364e42b514badb41b870ceb04');
    });

    test('sha1Hash', () {
      expect(sha1Hash('test'), 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3');
      expect(sha1Hash('qsu-md5'), 'e5c5dc3b2be3542475671d460f906c3b176bb5bf');
    });
  });
}

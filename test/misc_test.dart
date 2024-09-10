import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Misc', () {
    test('sleep', () {
      expect(sleep(100), completes);
    });
  });
}

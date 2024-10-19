import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Misc', () {
    test('sleep', () {
      expect(sleep(100), completes);
    });

    test('funcTimes', () {
      String sayHello([String? str]) {
        return 'Hello${str ?? ''}';
      }

      expect(funcTimes(2, sayHello), ['Hello', 'Hello']);
      expect(funcTimes(3, sayHello()), ['Hello', 'Hello', 'Hello']);
      expect(funcTimes(4, () => sayHello('!')),
          ['Hello!', 'Hello!', 'Hello!', 'Hello!']);
    });
  });
}

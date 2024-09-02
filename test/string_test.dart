import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('String', () {
    test('capitalizeFirst', () {
      expect(capitalizeFirst('t'), 'T');
      expect(capitalizeFirst('test'), 'Test');
      expect(capitalizeFirst('tEST'), 'TEST');
    });

    test('truncate', () {
      expect(truncate('test', 2), 'te');
      expect(truncate('test', 1, ellipsis: '...'), 't...');
    });
  });
}

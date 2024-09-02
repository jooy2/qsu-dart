import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('Format', () {
    test('numberFormat', () {
      expect(numberFormat(1234), '1,234');
      expect(numberFormat(12345678), '12,345,678');
      expect(numberFormat('12345'), '12,345');
      expect(numberFormat(123456.123), '123,456.123');
      expect(numberFormat('12.345'), '12.345');
      expect(numberFormat('12345.1'), '12,345.1');
      expect(numberFormat(1.2), '1.2');
      expect(numberFormat(0), '0');
      expect(numberFormat(-123456), '-123,456');
    });
  });
}

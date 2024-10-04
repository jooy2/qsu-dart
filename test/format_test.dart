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

    test('fileSize', () {
      expect(fileSize(1), '1 Bytes');
      expect(fileSize(1000000), '976.56 KB');
      expect(fileSize(2000, decimals: 3), '1.953 KB');
      expect(fileSize(250000000), '238.42 MB');
    });
  });
}

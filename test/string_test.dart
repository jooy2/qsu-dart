import 'package:qsu/qsu.dart';
import 'package:test/test.dart';

void main() {
  group('String', () {
    test('trim', () {
      expect(trim(''), '');
      expect(trim(' hello world '), 'hello world');
      expect(trim(' h e l l o  wo     rld  '), 'h e l l o wo rld');
      expect(trim(' H ello World'), 'H ello World');
      expect(trim('  Hell    o    World'), 'Hell o World');
    });

    test('replaceBetween', () {
      expect(replaceBetween('hello[world]', '[', ']', ''), 'hello');
      expect(replaceBetween("hello'test'world'test2'!!", "'", "'", ''), 'helloworld!!');
      expect(replaceBetween('hello[w]o[r][[l]][[d]]!!', '[', ']', ''), 'helloo]]!!');
      expect(replaceBetween('abc[hello]def[world]g[!!!]', '[', ']', ''), 'abcdefg');
      expect(replaceBetween('abc<<def>>ghi<<jkl>>mn', '<<', '>>', ''), 'abcghimn');
      expect(replaceBetween('hell1o2~', '1', '2', 'o!'), 'hello!~');
    });

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

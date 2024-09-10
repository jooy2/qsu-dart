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

    test('removeNewLine', () {
      expect(removeNewLine('''te

st'''), 'test');
      expect(removeNewLine('te\rst'), 'test');
      expect(removeNewLine('te\nst'), 'test');
      expect(removeNewLine('te\r\nst'), 'test');
      expect(removeNewLine('te\r\nst', replaceTo: '|'), 'te|st');
      expect(removeNewLine('t\ne\r\ns\rt', replaceTo: '-'), 't-e-s-t');
    });

    test('capitalizeFirst', () {
      expect(capitalizeFirst('t'), 'T');
      expect(capitalizeFirst('test'), 'Test');
      expect(capitalizeFirst('tEST'), 'TEST');
    });

    test('capitalizeEverySentence', () {
      expect(capitalizeEverySentence('hello. world'), 'Hello. World');
      expect(capitalizeEverySentence('hello. 1world'), 'Hello. 1World');
      expect(capitalizeEverySentence('HeLLO,world'), 'HeLLO,world');
      expect(capitalizeEverySentence('H. e. l. l. o.'), 'H. E. L. L. O.');
      expect(capitalizeEverySentence('hello!world!', splitChar: '!'), 'Hello!World!');
    });

    test('truncate', () {
      expect(truncate('test', 2), 'te');
      expect(truncate('test', 1, ellipsis: '...'), 't...');
    });
  });
}

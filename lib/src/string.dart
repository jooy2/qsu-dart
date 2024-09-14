import 'dart:math';

import 'package:qsu/qsu.dart';

String trim(String str) {
  if (str.isEmpty) {
    return '';
  }

  String result = str.trim();

  return result.replaceAll(RegExp(r'\s{2,}'), ' ');
}

String removeSpecialChar(String str, {String? exceptionCharacters}) {
  return str.replaceAll(RegExp('[^a-zA-Z가-힣ㄱ-ㅎㅏ-ㅣ0-9\u3040-\u30ff\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\uff66-\uff9f${exceptionCharacters ?? ''}]'), '');
}

String replaceBetween(String str, String startChar, String endChar, String replaceWith) {
  final RegExp specialCharacters = RegExp(r'[.*+?^${}()|[\]\\]');
  final String startCharRegExp = specialCharacters.hasMatch(startChar) ? '\\$startChar' : startChar;
  final String endCharRegExp = specialCharacters.hasMatch(endChar) ? '\\$endChar' : endChar;

  return str.replaceAll(RegExp('$startCharRegExp.*?$endCharRegExp'), replaceWith);
}

String removeNewLine(String str, {String replaceTo = ''}) {
  return str.replaceAll(RegExp(r'(\r\n|\n|\r)', multiLine: true), replaceTo).trim();
}

String capitalizeFirst(String str) {
  return '${str[0].toUpperCase()}${str.substring(1)}';
}

String capitalizeEverySentence(String str, {String? splitChar}) {
  final String splitter = splitChar ?? '.';
  final List<String> splitStr = str.split(splitter);
  String resultStr = '';
  List<String> sentenceChars = <String>[];

  for (int i = 0, iLen = splitStr.length; i < iLen; i += 1) {
    sentenceChars = [...splitStr[i].split('')];

    for (int j = 0, jLen = sentenceChars.length; j < jLen; j += 1) {
      if (RegExp(r'[a-zA-Z]').hasMatch(splitStr[i][j])) {
        sentenceChars[j] = splitStr[i][j].toUpperCase();
        break;
      }
    }

    resultStr += '${sentenceChars.join('')}${i < iLen - 1 ? splitter : ''}';
  }

  return resultStr;
}

String capitalizeEachWords(String str, {bool natural = false}) {
  final List<String> splitStr = str.trim().toLowerCase().split(' ');

  for (int i = 0, iLen = splitStr.length; i < iLen; i += 1) {
    if (!natural ||
        !contains(
            splitStr[i], ['in', 'on', 'the', 'at', 'and', 'or', 'of', 'for', 'to', 'that', 'a', 'by', 'it', 'is', 'as', 'are', 'were', 'was', 'nor', 'an'],
            exact: true)) {
      splitStr[i] = capitalizeFirst(splitStr[i]);
    }
  }

  return capitalizeFirst(splitStr.join(' '));
}

String truncate(String str, int length, {String? ellipsis}) {
  if (str.length > length) {
    return str.substring(0, length) + (ellipsis ?? '');
  }
  return str;
}

int strCount(String str, String search) {
  int count = 0;
  int pos = str.indexOf(search);

  while (pos > -1) {
    count += 1;
    pos = str.indexOf(search, (pos += search.length));
  }

  return count;
}

String strShuffle(String str) {
  List<int> codePoints = str.runes.toList();
  Random random = Random();

  for (int i = codePoints.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    int temp = codePoints[i];
    codePoints[i] = codePoints[j];
    codePoints[j] = temp;
  }

  return String.fromCharCodes(codePoints);
}

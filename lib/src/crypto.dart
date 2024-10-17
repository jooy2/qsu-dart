import 'dart:convert';

import 'package:crypto/crypto.dart';

String md5Hash(String str) {
  return md5.convert(utf8.encode(str)).toString();
}

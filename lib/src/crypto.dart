import 'dart:convert';

import 'package:crypto/crypto.dart';

String md5Hash(String str) {
  return md5.convert(utf8.encode(str)).toString();
}

String sha1Hash(String str) {
  return sha1.convert(utf8.encode(str)).toString();
}

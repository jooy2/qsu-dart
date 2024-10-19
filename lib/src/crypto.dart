import 'dart:convert';

import 'package:crypto/crypto.dart';

/// Converts String data to md5 hash value and returns it.
String md5Hash(String str) {
  return md5.convert(utf8.encode(str)).toString();
}

/// Converts String data to sha1 hash value and returns it.
String sha1Hash(String str) {
  return sha1.convert(utf8.encode(str)).toString();
}

/// Converts String data to sha256 hash value and returns it.
String sha256Hash(String str) {
  return sha256.convert(utf8.encode(str)).toString();
}

/// Base64-encode the given string.
String encodeBase64(String str) {
  return base64Encode(utf8.encode(str));
}

/// Decodes an encoded base64 string to a plain string.
String decodeBase64(String encodedStr) {
  return utf8.decode(base64Decode(encodedStr));
}

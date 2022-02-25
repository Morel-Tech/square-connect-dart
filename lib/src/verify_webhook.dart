import 'dart:convert';
import 'package:crypto/crypto.dart';

/// Returns true if webhook is from square
bool webhookIsFromSquare({
  required String sigKey,
  required String notificationUrl,
  required String squareSignature,
  required String rawBody,
}) {
  final encodedKey = utf8.encode(sigKey);
  final encodedBody = utf8.encode(notificationUrl + rawBody);

  final hmac = Hmac(sha1, encodedKey);
  final digest = hmac.convert(encodedBody);
  final hash = base64.encode(digest.bytes);

  return hash == squareSignature;
}

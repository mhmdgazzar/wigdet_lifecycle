
import 'package:crypto/crypto.dart';
import 'dart:convert';

String myString = "This is a message to be hashed";
String hashedString = hashStringSha256(myString);

print("Original String: $myString");
print("SHA-256 Hash: $hashedString");


String hashStringSha256(String message) {
  final bytes = utf8.encode(message); // Convert string to bytes
  final digest = sha256.convert(bytes); // Hash the bytes
  return hex.encode(digest.bytes); // Convert hash to hex string
}
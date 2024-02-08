import 'dart:io';

void main() {
  print("Enter String to be encrypted :");
  String? plaintext = stdin.readLineSync();

  int shift = 3;

  String encrypted = caesarCipher(plaintext!, shift);
  print("Encrypted: $encrypted");

  String decrypted = caesarCipher(encrypted, -shift);
  print("Decrypted: $decrypted");
}

String caesarCipher(String text, int shift) {
  const String alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  String result = '';

  for (int i = 0; i < text.length; i++) {
    String char = text[i];

    if (alphabet.contains(char.toUpperCase())) {
      int index = alphabet.indexOf(char.toUpperCase());

      int newIndex = (index + shift) % alphabet.length;

      result += char == char.toUpperCase()
          ? alphabet[newIndex]
          : alphabet[newIndex].toLowerCase();
    } else {
      result += char;
    }
  }

  return result;
}

import 'dart:io';

void main() {
  print("Enter a wrod to be reversed: ");
  String? value = stdin.readLineSync();
  if (value != null) {
    rev(value);
  }
}

void rev(String value) {
  String reveresed = '';

  for (int j = value.length - 1; j >= 0; j--) {
    reveresed += value[j];
  }
  print(reveresed);
}

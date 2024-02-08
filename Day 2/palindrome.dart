import 'dart:io';

void main() {
  print("Enter a Word: ");
  String? value = stdin.readLineSync();
  if (value != null) {
    bool ispalindrome= pali(value);
    print(ispalindrome);
  }
  
}
bool pali(String input){
  bool isPalindrome = true;

  int j = input.length - 1;
    for (int i = 0; i <= input.length / 2; i++) {
      if (input[i] != input[j]) {
        isPalindrome = false;
        break;
      }
      j--;
    }
    return isPalindrome;
}
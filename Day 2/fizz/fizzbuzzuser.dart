import 'dart:io';


void main() {
  print("Enter a number: ");

  int? number = int.tryParse(stdin.readLineSync()!);
  if (number != null) {
    fibo(number);
    
}
else {
    print("Input is not a valid number.");
  }
}
void fibo(int num){
  if (num % 3 == 0 && num % 5 == 0) {
      print("fizzbuzz");
    } else if (num % 3 == 0) {
      print("fizz");
    } else if (num % 5 == 0) {
      print("buzz");
    } else {
      print("$num");
    }
  } 




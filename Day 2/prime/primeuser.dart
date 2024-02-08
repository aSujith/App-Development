import 'dart:io';

void main() {
  print('Enter a Number: ');
  int? num = int.parse(stdin.readLineSync()!);
  if (num != 0) {
    String ans = isPrime(num);
    print(ans);
  }
}

String isPrime(int number) {
  String a = "Not a prime number";
  if (number <= 1) {
    return a;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return a;
    }
  }
  return "Prime number";
}

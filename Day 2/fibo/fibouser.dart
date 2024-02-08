import 'dart:io';

void main() {
  print("Enter Number: ");
  int? num = int.tryParse(stdin.readLineSync()!);

  if (num == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  fibo(num);
}

void fibo(int n) {
  int first = 0, second = 1;

  if (n >= 1) {
    print(first);
  }

  if (n >= 2) {
    print(second);
  }

  for (int i = 3; i <= n; i++) {
    int next = first + second;
    print(next);
    first = second;
    second = next;
  }
}

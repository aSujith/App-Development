void main() {
  int num = 30;
  if (isPrime(num)) {
    print("true");
  } else {
    print("False");
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

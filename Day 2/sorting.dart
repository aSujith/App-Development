void main() {
  List<int> number = [1, 6, 3, 7, 2, 4, 9];
  List<int> sortedNumbers = sorting(number);
  print(sortedNumbers);
}

List<int> sorting(List<int> num) {
  num.sort();
  return (num);
}

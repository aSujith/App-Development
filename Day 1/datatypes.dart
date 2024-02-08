void main() {
  List<int> numbers = [1, 2, 3, 4];
  print("Original list");
  for (var num in numbers) {
    print(num);
  }
  numbers.add(10);
  print("After addinng 10");
  for (var num in numbers) {
    print(num);
  }
  numbers.remove(2);
  print("After removing 2");
  for (var num in numbers) {
    print(num);
  }
  List<String> names = ["Sujith", "Marees", "Jhon"];
  for (var name in names) {
    print(name);
  }
}

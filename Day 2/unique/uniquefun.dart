void main() {
  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueNumbers = getUniqueElements(numbers);
  print(uniqueNumbers); // Output: [1, 2, 3, 4, 5]
}
List<int> getUniqueElements(List<int> list){
  List <int> uniqueNum=[];
  for (int element in list){
    !uniqueNum.contains(element);
    uniqueNum.add(element);
  }
  return(uniqueNum);
}
// by using Set data structure


void main() {
  List<int> num = [1, 2, 2, 3, 4, 4, 5];
  List<int> unum = Unique(num);
  print(unum); 
}
List<int> Unique(List<int> list){

  return list.toSet().toList();

}
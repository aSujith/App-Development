void main() {
  int a = 10;
  int b = 20;
  print("a:${a}, b:${b}");
  print("a+b= ${a+b}");
  print("a==b= ${a==b}");
  print("a+=b=${a+=b}");
  print("a:${a}, b:${b}");
  if(a>b && b<a){
    print("a is greater");
  }
  if(a>b || b>a){
    print("a and b are numbers");
  }
  if(!(a<b)){
    print("a is greater");
  }
//   print("a+b=${a+b}");
//   print("a+b=${a+b}");
}

void main() {
  
  fibo();

}
void fibo(){

int first = 0, second = 1;
  print(first);
  print(second);
  for (int i = 3; i <= 5; i++) {
    int next = first + second;
    print(next);
    first=second;
    second=next;
     }
}
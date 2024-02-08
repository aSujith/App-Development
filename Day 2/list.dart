// List using class
class Person {
  String destination;
  int cost;
  Person(this.destination, this.cost);
}

void main() {
// list
  List<Person> people = [
    Person("XYZ", 5),
    Person("ABC", 7),
    Person("PQR", 10),
  ];
  for (var People in people) {
    print(
        "if the destination zone is \"${People.destination}\" the shipping cost is \$${People.cost} per kilogram");
  }
}

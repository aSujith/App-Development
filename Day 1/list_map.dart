// List using class
class Person {
  String name;
  String city;
  int age;
  Person(this.name, this.city, this.age);
}

void main() {
// list
  List<Person> people = [
    Person("Sujith", "Tirupur", 19),
    Person("Marees", "Thuthukudi", 18),
  ];
  print(people[0].city);
  print(people[1].name);

  for (var People in people) {
    print(
        "Hi ${People.name} your age is ${People.age} and you are from ${People.city}");
  }
  // map
  Map<String , String> Department = {
    "Sujith": "Computer Technology",
    "Maress": "Computer Science Engineering ",
  };
  print(Department["Sujith"]);

  Department.forEach((name, dept) { 
    print("$name:$dept");
  });
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name, and I am $age years old.');
  }
}
// creating a class
class details {
  String city, contry;
  details(this.city, this.contry);

  void place() {
    print('$city is in $contry');
  }
}
class student extends Person{
  String major;

  student(String name, int age, this.major) : super(name,age);
  void students(){
    print("$name's age is $age and form $major major");
  }

}

void main() {
  var person = Person('Alice', 25); // Creating an object
  person.sayHello(); // Calling a method on the object

  var locality = details("Tirupur", "India");
  locality.place();
  var dept= student("Sujith", 19, "Computer Science");
  dept.students();
}


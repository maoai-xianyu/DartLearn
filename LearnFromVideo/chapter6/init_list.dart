void main() {
  var person = Person("Tom", 20, "Male");
}

class Person {
  String name;
  int age;
  final String gender;

  Person(this.name, this.age, this.gender);

  // gender = map["gender"] 会在构造方法的前面执行
  Person.withMap(Map map) : gender = map["gender"] {
    this.name = map["name"];
    this.age = map["age"];
  }

  void work() {
    print("Work...  $name $age $gender");
  }
}

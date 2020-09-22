void main() {
  const person = Person("z", 12, "male");
  // 常量能不能被赋值
  // person = Person("mm", 12, "famale");

  const person1 = Person("z", 12, "male");

  print(identical(person, person1));

  final p1 = Person("z", 12, "male");
  final p2 = Person("z", 12, "male");
  print(identical(p1, p2));
}

class Person {
  final String name;
  final int age;
  final String gender;

  const Person(this.name, this.age, this.gender);

  void work() {
    print("working  $name $age $gender");
  }
}

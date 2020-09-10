void main() {
  const person = const Person("z", 12, "male");
  // 常量能不能被赋值
  // person = Person("mm", 12, "famale");
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

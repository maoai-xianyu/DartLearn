void main() {
  var p1 = new Person(18);
  var p2 = new Person(20);
  print('p1 == p2  ${p1 == p2}');
  print('p1 > p2  ${p1 > p2}');
  print('p2["age"]  ${p1["age"]}');
}

class Person {
  int age;

  Person(this.age);

  bool operator >(Person person) {
    return this.age > person.age;
  }

  int operator [](String type) {
    if ("age" == type) {
      return this.age;
    }
    return 0;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && age == other.age;

  @override
  int get hashCode => age.hashCode;
}

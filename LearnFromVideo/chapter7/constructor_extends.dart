void main() {
  var student = new Student("Toms", "male");
  print(student.name);
}

class Person {
  String name;

  Person(this.name);

  Person.withName(this.name){
    print("Person ... name $name");
  }
}

class Student extends Person {
  int age;
  final String gender;

  Student(String name, String g)
      : gender = g,
        super.withName(name) {
    print("Student gender $gender name $name");
  }
}

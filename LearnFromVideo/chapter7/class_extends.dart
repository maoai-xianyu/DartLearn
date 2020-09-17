import 'person.dart';

void main() {
  var student = new Student();
  student.study();
  student.name = "Tom";
  student.age = 20;
  print(student.isAdult);
  student.run();

  print("-----------");
  Person person = new Student();
  if (person is Student) {
    person.study();
  }

  print(person);
}

class Student extends Person {
  void study() {
    print("Student study ....");
  }

  @override
  bool get isAdult => age > 22;

  @override
  void run() {
    print('student run ....');
  }

  @override
  String toString() {
    return "name $name  age $age";
  }
}

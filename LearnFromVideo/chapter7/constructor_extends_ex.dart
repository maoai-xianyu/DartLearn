void main() {
  var student1 = new Student("zhang");
  var student2 = new Student.withName("lan");
  print('student  ${student1.name}');
}

class Person {
  String name;

  Person(this.name);

  Person.withName(this.name);
}

class Student extends Person {
  int age;

  Student(String name) : super(name); // 继承父类的一个构造方法
//Student(String name) : super.withName(name);
  //Student.withName(String name) : super.withName(name);
  Student.withName(String name) : super(name);
}

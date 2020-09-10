void main() {
  Person person = new Person();
  person?.work(); // ? 的意思是 person 为空就不执行后面的方法，不为空就就执行。防止空指针

  var person2;
  person2 = "";
  person2 = new Person();
  (person2 as Person).work();

  var person3;
  person3 = "";
  person3 = new Person();
  if (person3 is Person) {
    person3.work();
  }

  var p = new Person();
  p.name = "sss";
  p.age = 12;
  // -- 转换
  new Person()..name = "sss"
    ..age = 20
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("Work....$name $age");
  }
}

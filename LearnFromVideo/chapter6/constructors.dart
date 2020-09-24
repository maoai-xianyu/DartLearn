import 'package:date_format/date_format.dart';

void main() {
  var person = Person("zhang", 18, "male");
  person.work();

  var person2 = Person.withName("zhang", "male");
  person2.work();

  // 可以使用可变参数
  var pStage = PersonStage();
  pStage.work();
  var pStage1 = PersonStage.withNullParam();
  pStage1.work();
  // 扩展构造函数
  var p1 = PersonMap.fromMap({"name": "lilei", "age": 18, "height": 1.88});
  print("P1  $p1");
  // 重定向构造函数

  var pR = PersonR("zhang");
  print(pR);
}

class Person {
  String name;
  int age;
  final String gender; // 不赋值 需要在构造函数中赋值

  // 有自定义的构造函数，默认的构造函数失效
  //Person() {}

  /* Person(String name, int age, String gender) {
    this.name = name;
    this.age = age;
    // 在构造方法中不能对 final 修饰的属性赋值
    this.gender = gender;
  }*/

  // 语法糖，是在构造方法执行之前对参数进行赋值
  Person(this.name, this.age, this.gender);

  //构造多个函数
  Person.withName(String name, this.gender) {
    this.name = name;
  }

  Person.withAge(this.age, this.gender);

  Person.withNull(this.gender);

  void work() {
    print("work .....$name  $age $gender");
  }
}

class PersonStage {
  String name;
  int age;

  PersonStage({String name = "", int age = 0}) {
    this.name = name;
    this.age = age;
  }

  PersonStage.withNullParam();

  void work() {
    print("PersonStage .....$name  $age");
  }
}

class PersonMap {
  String name;
  int age;
  double height;

  PersonMap(this.name, this.age);

  //PersonMap(this.name,this.age,{this.height});
  PersonMap.withNameAgeHeight(this.name, this.age, this.height);

  PersonMap.fromMap(Map<String, dynamic> map) {
    this.name = map['name'];
    this.age = map['age'];
    this.height = map['height'];
  }

  @override
  String toString() {
    return "$name $age $height";
  }
}

class PersonR {
  String name;
  int age;

  //PersonR(this.name);
  // 为age 赋初始值
  //PersonR(this.name) : age = 0;
  // 构造函数的重定向
  PersonR(String name) : this._internal(name, 0);

  PersonR._internal(this.name, this.age);

  @override
  String toString() {
    return "PersonR $name $age";
  }
}

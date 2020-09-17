void main() {}

class Person {
  String name;

  int get age => 18;

  void run() {
    print('Person run ...');
  }
}

// 实现接口
class Student implements Person {
  @override
  String name;

  @override
  int get age => 15;

  @override
  void run() {
    print('Student implements ...');
  }
}

// 继承
class Student2 extends Person {

}

// 作为接口用
abstract class PersonListener{
  void click();
}


class Student3 implements PersonListener{
  @override
  void click() {
    print('Student3 run...');
  }
}
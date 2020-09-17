void main() {
  //var person = new  Person(); 不能被直接创建
  var p = new People();
  p.run();
  p.work();
}

abstract class Person {
  void run();

  void work() {}
}

class People extends Person {
  @override
  void run() {
    print('实现抽象方法');
  }
}

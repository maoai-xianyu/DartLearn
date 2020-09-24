void main() {
  //var person = new  Person(); 不能被直接创建
  var p = new People();
  p.run();
  p.work();

  var map  = new Map(); // map 是抽象类，但是map是提供了工厂方法，所以可以使用实例化
  var list = new List();
  print(map.runtimeType);
  print(list.runtimeType);

  // external factory Map();
  // external 关键字的作用：将方法的声明和方法的实现分离 -> 这样做的好处可以针对不同的平台，进行不同的实现
  // 方法的实现需要用到 注解 @patch 在另外一个地方做了方法的实现。
}

abstract class Person {
  void run();

  void work() {
    print("父类的方法");
  }
}

class People extends Person {
  @override
  void run() {
    print('实现抽象方法');
  }

  @override
  void work() {
    print("子类实现父类已经实现的方法");
  }
}

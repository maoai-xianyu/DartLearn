void main() {}

abstract class Engine {
  void work();
}

class OilEngine implements Engine {
  @override
  void work() {
    print("Work with oil...");
  }
}

class ElectricEngine implements Engine {
  @override
  void work() {
    print("Work with Electric");
  }
}

class Tyre {
  String name;

  void run() {}
}

class Car = Tyre with ElectricEngine;

// 复杂写法
class CarChange extends Tyre with ElectricEngine {}

class Bus = Tyre with OilEngine;

abstract class EngineWork {
  void superWork();
}

// 实现多个接口
class SuperEngine implements Engine, EngineWork {
  @override
  void superWork() {}

  @override
  void work() {}
}

/**
 * 工厂构造 Factory constructor
 */
class Singleton1 {
  Singleton1._privateConstructor();

  static final Singleton1 _instance = Singleton1._privateConstructor();

  factory Singleton1() {
    return _instance;
  }

  void work() {
    print("work.....");
  }
}

void main() {
  Singleton1 s = Singleton1();
}

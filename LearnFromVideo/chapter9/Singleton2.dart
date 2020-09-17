/**
 * 静态变量 Static field with getter
 */
class Singleton2 {
  Singleton2._privateConstructor();

  static final Singleton2 _instance = Singleton2._privateConstructor();

  static Singleton2 get instance {
    return _instance;
  }
}

void main() {
  Singleton2 s = Singleton2.instance;
}

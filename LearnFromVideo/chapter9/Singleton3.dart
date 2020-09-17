/**
 * 静态变量Static field
 */
class Singleton3 {
  Singleton3._privateConstructor();

  static final Singleton3 instance = Singleton3._privateConstructor();
}

void main() {
  Singleton3 s = Singleton3.instance;
}

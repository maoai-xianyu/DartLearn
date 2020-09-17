/**
 * 常量和工厂构造 const constructor & factory
 */

class Singleton4 {
  factory Singleton4() => const Singleton4._internal_();

  const Singleton4._internal_();
}

void main() {
  print(new Singleton4() == new Singleton4());
  print(identical(new Singleton4(), new Singleton4()));
}

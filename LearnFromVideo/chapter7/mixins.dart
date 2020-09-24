void main() {
  var d = new D();
  d.a();
  d.b();
  d.c();

  var super2 = SuperMain();
  super2.fly();
  super2.a();
  super2.run();
}

class A {
  void a() {
    print('A.a()......');
  }
}

class B {
  void a() {
    print('B.a()......');
  }

  void b() {
    print('B.b()......');
  }
}

class C {
  void a() {
    print('C.a()......');
  }

  void b() {
    print('C.b()......');
  }

  void c() {
    print('C.c()......');
  }
}

class D extends A with B, C {}

mixin Runner {
  run() {
    print('在奔跑');
  }
}

mixin Flyer {
  fly() {
    print('在飞翔');
  }
}

// implements的方式要求必须对其中的方法进行重新实现
/*class SuperMan implements Runner, Flyer {
  @override
  fly() {}

  @override
  run() {}
}*/

class SuperMain extends A with Runner, Flyer {

}



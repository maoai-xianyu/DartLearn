/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  var func = a();
  func();

  var funb = b();
  funb();
  funb();
  funb();
  funb();
}

a() {
  int count = 0;
  printCount() {
    print(count++);
  }

  return printCount;
}

b() {
  int count = 0;

  return () {
    print(count++);
  };
}

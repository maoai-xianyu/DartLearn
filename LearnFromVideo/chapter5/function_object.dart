/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  // 把方法当做对象赋值给 func
  var func = printHello;
  func();

  Function fun = printHello;
  fun();

  var list = [1, 2, 3];
  list.forEach(print);
  var listm = ["h", "e", "1", "1", "o"];
  print(listTimes(listm, times));

  var listm2 = ["h", "2", "x", "z"];
  print(listTimes2(listm2, (String str) {
    return str * 3;
  }));

  testNum((num1, num2) => num1 + num2);
  testC((num1, num2) => num1 + num2);

  // 函数返回值
  var demo1 = demo();
  print(demo1(20,30));
}

// 这样的函数，其实阅读起来的比较难
void testNum(int foo(int num1, int num2)) {
  var result = foo(20, 30);
  print("result $result");
}

// 定义别名
typedef Calculate = int Function(int num1, int num2);

void testC(Calculate calculate) {
  var result = calculate(20, 30);
  print("result $result");
}


Calculate demo() {
  return (num1, num2) {
    return num1 * num2;
  };
}

void printHello() {
  print("hello");
}

List listTimes(List list, String f(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = f(list[index]);
  }
  return list;
}

List listTimes2(List list, String f(String str)) {
  List newList = new List();
  for (var item in list) {
    newList.add(f(item));
  }
  return newList;
}

String times(str) {
  return str * 3;
}

void test(Function func) {
  func();
}

void bar() {
  print("bar函数被调用");
}

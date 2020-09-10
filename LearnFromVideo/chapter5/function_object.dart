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

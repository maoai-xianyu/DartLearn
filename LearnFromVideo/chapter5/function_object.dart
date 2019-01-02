/**
 * create by zhangkun .
 * on 2019/01/02
 */

void main() {
  var func = printHello;
  func();

  Function fun = printHello;
  fun();

  var list = [1, 2, 3];
  list.forEach(print);


  var listm = ["h","e","1","1","o"];

  print(listTimes(listm, times));

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

String times(str) {
  return str * 3;
}

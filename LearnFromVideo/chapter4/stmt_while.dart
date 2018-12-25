/**
 * create by zhangkun .
 * on 2018/10/31
 */

void main() {
  var list = ["str", "java", "dart", "kotlin"];

  int count = 0;

  while (count <= 5) {
    print('count+ ${count++}');
  }

  print('-----------');

  int countdo = 0;

  do {
    print('countdo+ ${countdo++}');
  } while (countdo <= 5);
}

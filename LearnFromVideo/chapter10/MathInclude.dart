import 'lib/myMath.dart' show getAge;
import 'lib/myMath2.dart' hide getAge2;

void main() {
  // show getAge; 只能用 myMath.dart 中的 getAge 方法，其他的用不了
  getAge();
  // 不能使用
  //getName();
  //getSex()

  print('----------');

  // hide getAge2  不能能用 myMath2.dart 中的 getAge2 方法，其他的可以用
  //getAge2();
  getName2();
  getSex2();
}

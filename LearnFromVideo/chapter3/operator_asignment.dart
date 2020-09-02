/**
 * create by zhangkun .
 * on 2018/10/31
 */
void main() {
  int a = 10;

  int b;

  b ??= 10; // 如果b没有值，就用右边的数据，否则用b的值
  print('b ${b}');

  int c;
  c = 20;
  print(' c $c');
}

/**
 * create by zhangkun .
 * on 2018/10/31
 */
void main() {
  int a = 10;
  int b = 20;
  print('a+b = ${a + b}');
  print('a-b = ${a - b}');
  print('a*b = ${a * b}');
  print('a/b = ${a / b}');
  print('a~/b = ${a ~/ b}');
  print('a%b = ${a % b}');


  print('a++ ${a++} = $a'); // 先用后赋值

  print('++a ${++a} = $a'); // 先赋值后用

  print('a-- ${a--} = $a'); // 先赋值后用
  print('--a ${--a} = $a'); // 先赋值后用
}

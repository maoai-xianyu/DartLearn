void main() {
  num a = 10;
  print('a = $a');

  num b = 2.44;
  print('b = $b');
  a = 5.66;
  print('a 重新赋值 = $a');

  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a / b = ${a / b}');
  print('a ~/ b = ${a ~/ b}');
  print('a % b = ${a % b}');

  int a1 = 22;
  print('a1 = $a1');
  print('a1 / 0  = ${a1 / 0}'); // a1 / 0  = Infinity
  print('0 / 0  = ${0 / 0}'); // a1 / 0  = Infinity

  int zero1 = 0;
  int zero2 = 0;
  double zero = zero1 / zero2;
  print('zero.isNaN ${zero.isNaN}');

  double b1 = 3.1415926;
  print('b1 = $b1');

  print(1.0 / 0.0); // Infinity
  print(0.0 / 0.0); // Nan

  print(1 / 0); // Infinity
}

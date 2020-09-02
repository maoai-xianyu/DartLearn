void main() {
  var a;
  print(a);
  a = 10;
  print(a);
  a = 'hello world';
  print(a);
  var b = 20;
  print(b);

  final c = 30;
  print(c);
  //c = 100; // 不能对 c 再进行赋值
  print('c：$c');

  var name = 'Wang' ' ' 'Jianfei';
  print('name: $name');
  print("name: $name" + "sss");

  // 常量
  const d = 10;
  print('d = $d');
  // d = 20; 不可以被赋值

  // const 和 final 的区别
  final timeFinal = new DateTime.now();
  //const time = new DateTime.now();
}

void main(){
  var a;
  a = 10;
  a = "Dart";
  dynamic b = 20;
  b = "java";
  print('b  = $b)');

  //泛型
  var list = new List<dynamic>();
  list.add(1);
  list.add("hello");
  list.add(true);
  print('list $list');

  // 父类引用指向之类对象，泛型
  Object obj = "str";
  // 可以强转为 String 调用 substring 方法
  //print(obj.substring(0,1));
  print(obj);

  // 明确声明  dynamic   var 是一种类型推到
  dynamic dObj = "str";
  // 编译不报错
  print(dObj.substring(1));
}
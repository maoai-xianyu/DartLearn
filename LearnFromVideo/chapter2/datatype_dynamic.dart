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
}
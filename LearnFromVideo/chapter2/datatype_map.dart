void main() {
  var language = {"first": "Dart", "secod": "java", 1: true};
  print(language);
  print(language["first"]);
  print(language[1]);
  language[1] = false;
  print(language[1]);

  // 不可变的map  Cannot set value in unmodifiable Map
  var language1 = const {"first": "Dart", "secod": "java", 1: true};
  /*language1[1] = false;
  print(language1[1]);*/
  var map = new Map();
  var mapTest = {"first": "Dart", "secod": "java", 1: true};
  print(mapTest.length);
  print(mapTest.isEmpty);
  print(mapTest.keys); // map key
  print(mapTest.values); // map value

  print(mapTest.containsKey("first"));
  // 传入方法解析数据
  mapTest.forEach(f);
  // 第二中方式
  mapTest.forEach((key, value) {
    print('key = $key, value = $value');
  });
  var list = ["1", "2", "3"];
  // list 转 map 下标为index
  print(list.asMap()); // {0: 1, 1: 2, 2: 3}
}

void f(key, value) {
  print('key = $key, value = $value');
}

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
  print(mapTest.keys);
  print(mapTest.values);

  print(mapTest.containsKey("first"));

  mapTest.forEach(f);

  var  list = ["1","2","3"];

  print(list.asMap());

}

void f(key, value) {
  print('key = $key, value = $value');
}

void main() {
  var log1 = Logger("测试");
  var log2 = Logger("测试");
  var log3 = Logger("测试2");
  print(identical(log1, log2));
  print(identical(log2, log3));

  final name1 = Person.withName("zhang");
  final  name2 = Person.withName("zhang");
  print(identical(name1, name2));
}

class Logger {
  final String name;
  static final Map<String, Logger> _cache = new Map<String, Logger>();

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    print('msg $msg');
  }
}

class Person {
  String name;
  String color;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  factory Person.withName(String name) {
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    } else {
      final p = Person(name, "defult");
      _nameCache[name] = p;
      return p;
    }
  }


  factory Person.withColor(String color) {
    if (_colorCache.containsKey(color)) {
      return _colorCache[color];
    } else {
      final p = Person("default", color);
      _colorCache[color] = p;
      return p;
    }
  }
  Person(this.name, this.color);
}

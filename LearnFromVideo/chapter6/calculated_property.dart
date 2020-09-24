import 'importLib/Person.dart';

void main() {
  var rect = Rectangle();
  rect.width = 20;
  rect.height = 10;
  print(rect.area());
  print(rect.area1);
  print(rect.area2);

  // 给面积赋值
  rect.area3 = 600;
  print(rect.width);


  final pp = PersonPeople();
  //pp._gender = "ppName";  // 不在同一个文件下，访问不了  _  的属性
  pp.setGender = "ppName";
  print(pp.getGender);

  // setter 和 getter
  final p = Person();
  p.setName = "zhang";
  print(p.getName);
  p._gender = "zz";
  p.setGender = "zhang---";
  print(p.getGender);
}

class Rectangle {
  num width, height;

  // 把 area 改为计算属性
  num area() {
    return width * height;
  }

  // 属性 获取值
  num get area1 {
    return width * height;
  }

  // 简写 获取值
  num get area2 => width * height;

  // 获取值和赋值
  num get area3 => width * height;

  set area3(value) {
    width = value / 20;
  }
}

class Person {
  String name;
  String _gender; // _是在当前文件文件下可以访问，其他文件是访问不了的

  // setter
  set setName(String name) {
    this.name = name;
  }

  // getter 这里没有小括号
  String get getName {
    return name;
  }

  set setGender(String gender) {
    this._gender = gender;
  }

  String get getGender => _gender;
}

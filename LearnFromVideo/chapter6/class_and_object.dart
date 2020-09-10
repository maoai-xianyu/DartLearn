import 'importLib/People.dart'; // 导入类

void main() {
  var person = Person();
  person.name = "hzang";
  person.age = 11;
  //person.address = "打听"; // 不能被赋值
  print(person.address);
  person.work();
  person.study();

  // 需要进行导包，每个dart文件就是一个lib
  var people = new People();
  people.sleep();

  // 私有类，不能被访问
  //var im = _PrivateLin();
}

class Person {
  String name;
  int age;
  final String address = "北京"; // 不能再被赋值

  void work() {
    print("name is $name, age is $age");
  }

  // 方法不能重载
  /*void work(int x){
    print("name is $name, age is $age");
  }*/
  void study({address = 2, city = "北京"}) {
    print("age $age  address $address city $city");

  }
}

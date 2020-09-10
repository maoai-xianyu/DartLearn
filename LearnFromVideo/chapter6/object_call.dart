void main() {
  var person = new Person();
  person.name = "tom";
  person.age = 20;
  //person.work();
  //person(); //没有参数

  //person("zhang", 23);
  // 返回值
  print(person("zhang", 23));
}

class Person {
  String name;
  int age;

  /*void work() {
    print("name is $name, Age is $age");
  }*/
  // 没有参数 Person()
  /*void call(){
    print("name is $name, Age is $age");
  }*/
  // 可以添加参数 Person("zhang",12)
  /*void call(String name,int age){
    print("name is $name, Age is $age");
  }*/

  // 可以添加返回值
  String call(String name, int age) {
    return "name is $name, Age is $age";
  }
}
